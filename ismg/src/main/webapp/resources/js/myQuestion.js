var TableDatatablesAjax = function () {
  var initPickers = function () {
    $('.date-picker').datepicker({
      rtl: App.isRTL(),
      autoclose: true
    });
  }
  var handleDemo1 = function () {
    var grid = new Datatable();
    grid.init({
      src: $("#datatable_ajax"),
      onSuccess: function (grid, response) {
      },
      onError: function (grid) {
      },
      onDataLoad: function (grid) {
      },
      loadingMessage: '加载中.......',
      dataTable: {
        language: {
          "sProcessing": "处理中...",
          "sLengthMenu": "显示 _MENU_ 项结果",
          "sZeroRecords": "没有匹配结果",
          "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
          "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
          "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
          "sInfoPostFix": "",
          "sSearch": "搜索:",
          "sUrl": "",
          "sEmptyTable": "表中数据为空",
          "sLoadingRecords": "载入中...",
          "sInfoThousands": ",",
          "oAria": {
            "sSortAscending": ": 以升序排列此列",
            "sSortDescending": ": 以降序排列此列"
          }
        },
        stripeClasses: ["odd", "even"],
        /* Dom说明
         定义表格控件在页面的显示顺序。
         每个控件元素在数据表都有一个关联的单个字母。
         l - 每页显示行数的控件
         f - 检索条件的控件
         t - 表格控件
         i - 表信息总结的控件
         p - 分页控件
         r - 处理中的控件
         还可以在控件元素外添加DIV和Class，语法如下
         < and > - DIV元素
         <"class" and > - DIV和Class
         <"#id" and > - DIV和ID*/
        // "dom": '<lf<t>ip>',//表信息在表上面，检索条件，每页行数，处理中在表下面，并且有清除元素
        //'dom': '<"float_left"f>r<"float_right"l>tip',
        "search": {
          "caseInsensitive": false
        },//查询的时候是否大小写敏感
        "bStateSave": true, //
        // scrollY: 400,//垂直滚动
        "lengthMenu": [
          [10, 20, 50, 100, 150, -1],
          [10, 20, 50, 100, 150, "All"]
        ],//分页条件
        "pageLength": 10,//改变初始化页长度（每页多少条数据）
        ajax: function (data, callback, settings) {
          //封装请求参数
          var param = {};
          param.limit = data.length;//页面显示记录条数，在页面显示每页显示多少项的时候
          param.start = data.start;//开始的记录序号
          param.page = (data.start / data.length) + 1;//当前页码
          param.loginName = $("#loginName").val();
          param.realName = $("#realName").val();
          param.workAdress = $("#workAddress").val();
          param.workType = $("#workType").val();
          param.level = $("#level").val();
          param.startTime = $("#startTime").val();
          param.endTime = $("#endTime").val();
          //ajax请求数据
          $.ajax({
            type: "POST",
            url: "user_getUserList",
            cache: false, //禁用缓存
            data: param, //传入组装的参数
            dataType: "json",
            success: function (result) {
              //封装返回数据
              var returnData = {};
              returnData.draw = data.draw;//这里直接自行返回了draw计数器,应该由后台返回
              returnData.recordsTotal = result.total;//返回数据全部记录
              returnData.recordsFiltered = result.total;//后台不实现过滤功能，每次查询均视作全部结果
              returnData.data = result.data;//返回的数据列表
              //console.log(returnData);
              //调用DataTables提供的callback方法，代表数据已封装完成并传回DataTables进行渲染
              //此时的数据需确保正确无误，异常判断应在执行此回调前自行处理完毕
              callback(returnData);
            }
          });
        },

        "fnDrawCallback": function () {
          var api = this.api();
          var startIndex = api.context[0]._iDisplayStart;//获取到本页开始的条数
          api.column(0).nodes().each(function (cell, i) {
            cell.innerHTML = startIndex + i + 1;
          });
        },//显示序号

        "columns": [{
          "data": null,
          "targets": 0
        },
          {"data": "loginName"},
          {"data": "realName"},
          {"data": "level"},
          {"data": "workAdress"},
          {"data": "workType"},
          {
            "data": "createTime",
            "render": function (data, type, full, meta) {
              //时间格式化
              return moment(data).format("YYYY-MM-DD HH:mm:ss");
            }
          },
          {
            "data": "updateTime",
            "render": function (data, type, full, meta) {
              //时间格式化
              return moment(data).format("YYYY-MM-DD HH:mm:ss");
            }
          },
          {
            "data": null,
            "className": "center",
            "defaultContent": '<button type="button" id="editrow" data-toggle="modal" class="btn btn-outline btn-circle btn-sm purple"><i class="fa fa-edit"></i></button>  <button id="delrow" class="btn btn-outline btn-circle dark btn-sm black"><i class="fa fa-trash-o"></i></button>'
          }],
        "order": [
          [1, "asc"]
        ]
      }
    });

    grid.getTableWrapper().on('click', '.table-group-action-submit',
        function (e) {
          e.preventDefault();
          var action = $(".table-group-action-input", grid.getTableWrapper());
          if (action.val() != "" && grid.getSelectedRowsCount() > 0) {
            grid.setAjaxParam("customActionType", "group_action");
            grid.setAjaxParam("customActionName", action.val());
            grid.setAjaxParam("id", grid.getSelectedRows());
            grid.getDataTable().ajax.reload();
            grid.clearAjaxParams();
          } else if (action.val() == "") {
            App.alert({
              type: 'danger',
              icon: 'warning',
              message: 'Please select an action',
              container: grid.getTableWrapper(),
              place: 'prepend'
            });
          } else if (grid.getSelectedRowsCount() === 0) {
            App.alert({
              type: 'danger',
              icon: 'warning',
              message: '没有数据选中',
              container: grid.getTableWrapper(),
              place: 'prepend'
            });
          }
        });
  }

  return {
    init: function () {

      initPickers();
      handleDemo1();

    }

  };

}();

jQuery(document).ready(function () {
  TableDatatablesAjax.init();
});



