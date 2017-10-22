package wsylp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import wsylp.po.User;

/**
 * Created by wsylp on 2017/8/23.
 */
public class BaseController {

    //region HttpRequest Response Session
   // @Autowired
    protected HttpServletRequest request;

    //@Autowired 注解造成测试类不能使用,故采用MOdeAndView
    protected HttpServletResponse response;

    protected HttpSession session;

    protected User currentUser;

       @ModelAttribute
       public void setReqAndRes(HttpServletRequest request, HttpServletResponse response){
           response.setCharacterEncoding("UTF-8");
           this.request = request;
            this.response = response;
           this.session = request.getSession();
            this.currentUser=(User)this.session.getAttribute("userMessage");
        }


    public HttpServletResponse getResponse() {
        response.setCharacterEncoding("UTF-8");
        return response;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }


}
