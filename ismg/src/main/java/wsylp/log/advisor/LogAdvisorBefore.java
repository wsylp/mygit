package wsylp.log.advisor;

import java.lang.reflect.Method;
import org.springframework.aop.MethodBeforeAdvice;
import wsylp.log.Logger;

public class LogAdvisorBefore implements MethodBeforeAdvice {
    protected Logger logger = Logger.getLogger(this.getClass());

    public void before(Method method, Object[] args, Object target) throws Throwable {
        logger.info("前置增强:"+method.getDeclaringClass()+"."+method.getName());
    }
}
