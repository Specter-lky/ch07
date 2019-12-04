package user;

import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import javax.json.bind.Jsonb;
import javax.json.bind.JsonbBuilder;

@SuppressWarnings("unused")
public class HttpClient {
    public HttpClient() {

    }

    public static String postJson(String url, Object obj) {
        Jsonb jsonb = JsonbBuilder.create();
        return postJson(url, jsonb.toJson(obj));
    }

    @SuppressWarnings("WeakerAccess")
    public static String postJson(String url, String jsonStr) {

        try {
//            JSONObject  obj = new JSONObject();
//            obj.append("app_name", "全民大讨论");
//            obj.append("app_ip", "10.21.243.234");
//            obj.append("app_port", 8080);
//            obj.append("app_type", "001");
//            obj.append("app_area", "asd");

            CloseableHttpClient httpclient = HttpClients.createDefault();
//            System.out.println(obj);

            HttpPost httpPost = new HttpPost(url);
            httpPost.addHeader("Content-Type", "application/json;charset=UTF-8");

            // 解决中文乱码问题
            StringEntity stringEntity = new StringEntity(jsonStr, "UTF-8");
            stringEntity.setContentEncoding("UTF-8");

            httpPost.setEntity(stringEntity);

            // CloseableHttpResponse response =
            // httpclient.execute(httpPost);

            System.out.println("Executing request " + httpPost.getRequestLine());

            // Create a custom response handler
            ResponseHandler<String> responseHandler = response -> {
                //lambda表达式
                int status = response.getStatusLine().getStatusCode();

                if (status >= 200 && status < 300) {

                    HttpEntity entity = response.getEntity();

                    return entity != null ? EntityUtils.toString(entity) : null;

                } else {
                    throw new ClientProtocolException(
                            "Unexpected response status: " + status);
                }
            };

            String responseBody = httpclient.execute(httpPost, responseHandler);
            System.out.println("----------------------------------------");
            System.out.println(responseBody);

            return responseBody;

        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
}
