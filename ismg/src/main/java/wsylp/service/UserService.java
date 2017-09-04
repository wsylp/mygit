package wsylp.service;

import java.util.List;
import wsylp.po.User;

/**
 * Created by wsylp on 2017/5/4.
 */

public interface UserService {
    User getUserById(long id);
    User getUserLogin(String loginName, String password);

    List<User> getUserList();

    /**
     * 新增用户
     * @param user 用户
     * @return true:成功,false:失败
     */
    boolean addUser(User user);
}
