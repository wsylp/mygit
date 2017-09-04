package wsylp.service.impl;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wsylp.dao.UserMapper;
import wsylp.log.Logger;
import wsylp.po.User;
import wsylp.service.UserService;


@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    public UserMapper userDao;


    @Override
    public boolean addUser(User user) {
        userDao.insertSelective(user);
        return true;
    }

    public User getUserById(long id) {
        User user = userDao.selectByPrimaryKey(id);
        System.out.println(user.getId());
        return user;
    }


    public User getUserLogin(String loginName, String password) {
        User user = userDao.getUserLogin(loginName, password);
        return user;
    }

    public List<User> getUserList() {
        List<User> users = userDao.getUserList();
        return users;
    }






}
