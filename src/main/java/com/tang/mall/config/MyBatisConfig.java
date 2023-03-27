package com.tang.mall.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

/**
 * MyBatis 配置类
 */
@Configuration
@MapperScan("com.tang.mall.model.dao")
public class MyBatisConfig {
}
