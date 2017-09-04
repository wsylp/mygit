package wsylp.log.advisorC;

import java.lang.reflect.Method;
import org.springframework.aop.AfterReturningAdvice;
import wsylp.log.Logger;

/**
 * Created by wsylp on 2017/7/23.
 */
public class LogAfterAdvice implements AfterReturningAdvice {

    protected Logger logger = Logger.getLogger(this.getClass());

    @Override
    public void afterReturning(Object o, Method method, Object[] objects, Object target)
        throws Throwable {
        logger.info(
            "基于advisor->后置增强" + "方法名:" + target.getClass().getName() + "." + method.getName() + "()");
    }
}
