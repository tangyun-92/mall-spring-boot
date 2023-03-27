package com.tang.mall.model.query;

/**
 * 查询产品列表的 Query
 */

public class PmsBrandListQuery {

    private String name;

    private Integer factoryStatus;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getFactoryStatus() {
        return factoryStatus;
    }

    public void setFactoryStatus(Integer factoryStatus) {
        this.factoryStatus = factoryStatus;
    }
}
