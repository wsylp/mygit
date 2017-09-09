$(function() {
  //提示信息
  var lang = {
    "sProcessing":   "处理中...",
    "sLengthMenu":   "每页 _MENU_ 项",
    "sZeroRecords":  "没有匹配结果",
    "sInfo":         "当前显示第 _START_ 至 _END_ 项，共 _TOTAL_ 项。",
    "sInfoEmpty":    "当前显示第 0 至 0 项，共 0 项",
    "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
    "sInfoPostFix":  "",
    "sSearch":       "搜索:",
    "sUrl":          "",
    "sEmptyTable":     "表中数据为空",
    "sLoadingRecords": "载入中...",
    "sInfoThousands":  ",",
    "oPaginate": {
      "sFirst":    "首页",
      "sPrevious": "上页",
      "sNext":     "下页",
      "sLast":     "末页",
      "sJump":     "跳转"
    },
    "oAria": {
      "sSortAscending":  ": 以升序排列此列",
      "sSortDescending": ": 以降序排列此列"
    }
  };


  //初始化表格
  var table = $("#datatable_ajax").DataTable({
    language: lang, //提示信息
    autoWidth: false,	//禁用自动调整列宽
    stripeClasses: ["odd", "even"],//为奇偶行加上样式，兼容不支持CSS伪类的场合
    order: [],			//取消默认排序查询,否则复选框一列会出现小箭头
    processing: false,	//隐藏加载提示,自行处理
    serverSide: true,	//启用服务器端分页
    searching: false,	//禁用原生搜索

    order: [], //取消默认排序查询,否则复选框一列会出现小箭头
    deferRender: true, //延迟渲染可以提高Datatables的加载速度
    lengthMenu: [
      [10, 25, 50, 100, 300, -1],
      [10, 25, 50, 100, 300, "所有"]
    ], //每页多少项，第一个数组是表示的值，第二个数组用来显示
    renderer: "bootstrap", //渲染样式：Bootstrap和jquery-ui
    pagingType: "full_numbers", //分页样式：simple,simple_numbers,full,full_numbers
    // scrollY: 300, //表格的固定高
    scrollCollapse: true, //开启滚动条
    pageLength: 10, //首次加载的数据条数
    columnDefs: [{
      targets: 'nosort', //列的样式名
      orderable: false //包含上样式名‘nosort'的禁止排序
    }],
    //对应列表表头字段
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
        "defaultContent": '<button type="button" id="editrow" data-toggle="modal" class="btn btn-outline btn-circle btn-sm purple"><i class="fa fa-edit"></i></button>'
        + '  <button id="delrow" class="btn btn-outline btn-circle dark btn-sm black"><i class="fa fa-trash-o"></i></button>'
      }],
    "order": [
      [1, "asc"]
    ],
    ajax: function(data, callback, settings) {
      //封装请求参数
      var param = {};
      param.limit = data.length; //页面显示记录条数，在页面显示每页显示多少项的时候
      param.start = data.start; //开始的记录序号
      param.page = (data.start / data.length) + 1; //当前页码
      param.loginName = $("#loginName").val();
      param.realName = $("#realName").val();
      param.workAdress = $("#workAddress").val();
      param.workType = $("#workType").val();
      param.level = $("#level").val();
      param.startTime = $("#startTime").val();
      param.endTime = $("#endTime").val();
      //console.log(param);
      //ajax请求数据
      $.ajax({
        type: "POST",
        url: "user_getUserList",
        cache: false, //禁用缓存
        data: param, //传入组装的参数
        dataType: "json",
        //contentType: 'application/json;charset=utf-8',
        beforeSend: function(request) {
          request.setRequestHeader("token", localStorage.token);
        },
        success: function(result) {
          //console.log(result);
          //setTimeout仅为测试延迟效果
          setTimeout(function() {
            //封装返回数据
            var returnData = {};
            returnData.draw = data.draw; //这里直接自行返回了draw计数器,应该由后台返回
            returnData.recordsTotal = result.total;//返回数据全部记录
            returnData.recordsFiltered = result.total;//后台不实现过滤功能，每次查询均视作全部结果
            returnData.data = result.data; //返回的数据列表
            //console.log(returnData);
            //调用DataTables提供的callback方法，代表数据已封装完成并传回DataTables进行渲染
            //此时的数据需确保正确无误，异常判断应在执行此回调前自行处理完毕
            callback(returnData);
          }, 200);
        }
      });
    },

  });

  table.on('order.dt search.dt',
      function() {
        var startIndex = table.context[0]._iDisplayStart;//获取到本页开始的条数
        table.column(0, {
          search: 'applied',
          order: 'applied'
        }).nodes().each(function(cell, i) {
          cell.innerHTML = startIndex+i + 1;
        });
      }).draw();

});