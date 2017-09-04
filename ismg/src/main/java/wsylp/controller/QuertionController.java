package wsylp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import wsylp.log.Logger;
import wsylp.service.UserService;

/**
 * Created by wsylp on 2017/5/4.
 */
@Controller
public class QuertionController extends BaseController {

    protected Logger logger = Logger.getLogger(this.getClass());


    @RequestMapping("/question_myQuestions.html")
    public String myQuestionAndAnawer(){
        return "/question/myQuestion";
    }

    @Autowired
    private UserService userService;


}
