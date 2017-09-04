package wsylp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.ModelAttribute;
import wsylp.po.User;

/**
 * Created by wsylp on 2017/8/23.
 */
public class BaseController {
    //region HttpRequest Response Session
    protected HttpServletRequest request;
    protected HttpServletResponse response;
    protected HttpSession session;
    protected User currentUser;

    @ModelAttribute
    public void setReqAndRes(HttpServletRequest request, HttpServletResponse response){
        this.request = request;
        this.response = response;
        this.session = request.getSession();
        this.currentUser=(User)this.session.getAttribute("userMessage");
    }

    //endregion

    //region Paged
    protected static final String CURRENTPAGE = "1";
    protected static final Integer PAGE_SIZE = 2;

    protected Integer getTotalPage(Integer pageSize, Integer total) {
        return total / pageSize == 0 ? total / pageSize : total / pageSize + 1;
    }

//    protected PageResult getPageResult(HttpServletRequest request, Integer currentPage, Page page,
//        List list) {
//        Integer total = Integer.valueOf(String.valueOf(page.getTotal()));
//        Integer totalPage =getTotalPage(PAGE_SIZE,total);
//        PageResult pageResult = new PageResult(currentPage, PAGE_SIZE, list, total, totalPage,request.getQueryString());
//        return pageResult;
//    }
    //endregion

}
