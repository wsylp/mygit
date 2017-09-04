package wsylp.log.advisorC;

import java.lang.reflect.Method;
import org.springframework.aop.MethodBeforeAdvice;
import wsylp.log.Logger;


/**
 * Created by wsylp on 2017/7/17.
 */
public class LogBeforeAdvice implements MethodBeforeAdvice {

    protected Logger logger = Logger.getLogger(this.getClass());

    @Override
    public void before(Method method, Object[] objects, Object o) throws Throwable {
        logger.info("基于advisor->前置增强"+"方法名:" + o.getClass().getName() + "." + method.getName() + "()");
     }
}
