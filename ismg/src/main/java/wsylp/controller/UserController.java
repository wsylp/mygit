package wsylp.controller;

import com.alibaba.fastjson.JSON;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import wsylp.log.Logger;
import wsylp.po.User;
import wsylp.service.UserService;

/**
 * Created by wsylp on 2017/5/4.
 */
@Controller
public class UserController extends BaseController {

    protected Logger logger = Logger.getLogger(this.getClass());


    /**
     * 注册用户
     */
    @RequestMapping("/register.html")
    public String register(User user) {
        userService.addUser(user);
        return "index";
    }

    @RequestMapping("/user_getLoginUser.html")
    public void getLoinUser() {
        response.setCharacterEncoding("UTF-8");
        try {
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");
            HashMap<String, Object> map = new HashMap<String, Object>();
            map.put("user", user);
            String json = JSON.toJSONString(map);
            response.getWriter().write(json);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }




    @RequestMapping("/index.html")
    public String index() {
        return "index";
    }

    @RequestMapping("/userList.html")
    public String userList() {
        return "userList";
    }


    @RequestMapping("/dashboard_2.html")
    public String dashboard() {
        return "dashboard_2";
    }

    @RequestMapping("/dashboard_3.html")
    public String dashboard3() {
        return "dashboard_3";
    }


    @RequestMapping("/login.html")
    public String login(User user) {
        User loginUser = userService.getUserLogin(user.getLoginName(), user.getPassword());
        if (loginUser != null) {
            logger.info("将用户存放到session中!");
            request.getSession().setAttribute("user",loginUser);
            return "index";
        } else {
            return "login";
        }
    }


    @RequestMapping("/user_getUserList")
    @ResponseBody
    public String getUserList() {
        String search = request.getParameter("search[value]");
        String draw = request.getParameter("draw");
        String order = request.getParameter("order[0][column]");
        String orderDir = request.getParameter("order[0][dir]");
        String startRec = request.getParameter("start");
        String pageSize = request.getParameter("length");
        List<User> users = userService.getUserList();
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("data", users);
        String json = JSON.toJSONString(map);
        return json;
    }


    /**
     * 返回首页
     */
    @RequestMapping("/ user_getHome")
    @ResponseBody
    public ModelAndView getHome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }

    @Autowired
    private UserService userService;


}
