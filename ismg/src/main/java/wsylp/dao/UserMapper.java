package wsylp.dao;


import java.util.List;
import org.apache.ibatis.annotations.Param;
import wsylp.po.User;

public interface UserMapper  extends BaseMapper<User> {
        User getUserLogin(@Param("loginName") String loginName, @Param("password") String password);

    List<User> getUserList();
}