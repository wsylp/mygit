package wsylp.log.advisor;

import java.lang.reflect.Method;
import org.springframework.aop.AfterReturningAdvice;
import wsylp.log.Logger;

/**
 * Created by wsylp on 2017/7/22.
 */
public class LogAdvisorAfter implements AfterReturningAdvice {
    protected Logger logger = Logger.getLogger(this.getClass());

    @Override
    public void afterReturning(Object o, Method method, Object[] objects, Object o1)
        throws Throwable {
        logger.info("后置增强:"+method.getDeclaringClass()+"."+method.getName());
    }
}
