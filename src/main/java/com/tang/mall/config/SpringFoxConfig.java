package com.tang.mall.config;

import com.github.xiaoymin.swaggerbootstrapui.annotations.EnableSwaggerBootstrapUI;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import javax.xml.ws.Response;

@Configuration
@EnableSwagger2
@EnableSwaggerBootstrapUI
@ConditionalOnProperty(name = "swagger.enable", havingValue = "true")
public class SpringFoxConfig {

    //访问http://localhost:8080/swagger-ui.html可以看到API文档
    @Bean
    public Docket api() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .genericModelSubstitutes(Response.class)
                .forCodeGeneration(true)
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.tang.mall.controller"))
                .paths(PathSelectors.any())
                .build();
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("mall API")
                .description("")
                .termsOfServiceUrl("")
                .build();
    }
}