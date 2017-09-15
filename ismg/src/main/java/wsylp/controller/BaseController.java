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

 public HttpServletResponse getResponse(){
        response.setCharacterEncoding("UTF-8");
        return response;
 }

}
