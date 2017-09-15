package wsylp.controller;

import com.alibaba.fastjson.JSON;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import wsylp.filter.Pagination;
import wsylp.filter.UserSearchFilter;
import wsylp.po.Music;
import wsylp.po.User;
import wsylp.service.MusicService;
import wsylp.service.UserService;

/**
 * 音乐控制器
 * Created by wsylp on 2017/5/4.
 */
@Controller
public class MusciController extends BaseController {

    private static Logger logger = LogManager.getLogger(MusciController.class.getName());


    /**
     * 音乐流行榜
     * @throws IOException
     */
    @RequestMapping("/music_popular.html")
    public String musicPopular() throws IOException {
        try {

            List<Music> musics = musicService.getMusic();
            return "musicPopular";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "index";
    }




    @Autowired
    private UserService userService;

    @Autowired
    private MusicService musicService;


}
