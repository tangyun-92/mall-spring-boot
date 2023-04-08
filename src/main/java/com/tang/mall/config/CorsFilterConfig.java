package com.tang.mall.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * 允许跨域配置
 */
@Configuration
@Order(value = 0)
@WebFilter(filterName = "CorsFilterConfig", urlPatterns = "/")
public class CorsFilterConfig implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        Map<String, String> headers = Collections
                .list(httpRequest.getHeaderNames())
                .stream()
                .collect(Collectors.toMap(h -> h, httpRequest::getHeader));
        String origin = headers.get("origin");// 获取源站
        httpResponse.setHeader("Access-Control-Allow-Origin", "*");
        httpResponse.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE, PUT");
        httpResponse.setHeader("Access-Control-Max-Age", "1728000");
        httpResponse.setHeader("Access-Control-Allow-Credentials", "true");
        httpResponse.setHeader("Access-Control-Allow-Headers",
                "Content-Type, Accept,X-Requested-With,token");

        if (httpRequest.getMethod().equals(RequestMethod.OPTIONS.name())) {
            return;
        }
        chain.doFilter(httpRequest, httpResponse);
    }
}
