package org.goskyer.common;

import okhttp3.*;

import java.io.IOException;
import java.util.Map;
import java.util.Set;

/**
 * Created by galaxy on 2017/3/6.
 * <p>
 * 快速调用http
 */
public class FastHttp {

    private static final OkHttpClient httpClient = new OkHttpClient();

    public String get(String url) {

        Request request = new Request.Builder().url(url).build();

        return execute(request);
    }

    public String post(String url, Map<String, String> params) {

        FormBody body = formatBody(params);
        Request request = new Request.Builder().url(url).post(body).build();

        return execute(request);
    }

    public String execute(Request request) {

        String result = null;

        try {

            Response response = httpClient.newCall(request).execute();

            if (response.isSuccessful()) {
                result = response.body().string();
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

        return result;

    }

    public FormBody formatBody(Map<String, String> body) {

        FormBody.Builder builder = new FormBody.Builder();

        Set<String> keys = body.keySet();

        for (String key : keys) {
            builder.add(key, body.get(key));
        }

        return builder.build();
    }

}
