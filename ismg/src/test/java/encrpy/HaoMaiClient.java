package encrpy;

import com.alibaba.fastjson.JSON;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.io.IOUtils;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by wsylp on 2017/6/26.
 */
@Component
public class HaoMaiClient {

    @Autowired
    HttpConnectionManager connManager;

    public <T> T get(String path, Class<T> clazz) {
        CloseableHttpClient httpClient = connManager.getHttpClient();
        HttpGet httpget = new HttpGet(path);
        String json = null;
        CloseableHttpResponse response = null;
        try {
            response = httpClient.execute(httpget);
            InputStream in = response.getEntity().getContent();
            json = IOUtils.toString(in);
            in.close();
        } catch (UnsupportedOperationException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (response != null) {
                try {
                    response.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return JSON.parseObject(json, clazz);
    }
}
