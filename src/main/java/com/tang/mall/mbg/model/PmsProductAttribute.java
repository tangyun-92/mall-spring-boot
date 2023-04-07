package com.tang.mall.mbg.model;

import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;

public class PmsProductAttribute implements Serializable {
    private Long id;

    private Long productAttributeCategoryId;

    private String name;

    @ApiModelProperty(value = "属性选择类型：0->唯一；1->单选；2->多选")
    private String selectType;

    @ApiModelProperty(value = "属性录入方式：0->手工录入；1->从列表中选取")
    private String inputType;

    @ApiModelProperty(value = "可选值列表，以逗号隔开")
    private String inputList;

    @ApiModelProperty(value = "排序字段：最高的可以单独上传图片")
    private Integer sort;

    @ApiModelProperty(value = "分类筛选样式：1->普通；1->颜色")
    private String filterType;

    @ApiModelProperty(value = "检索类型；0->不需要进行检索；1->关键字检索；2->范围检索")
    private String searchType;

    @ApiModelProperty(value = "相同属性产品是否关联；0->不关联；1->关联")
    private String relatedStatus;

    @ApiModelProperty(value = "是否支持手动新增；0->不支持；1->支持")
    private String handAddStatus;

    @ApiModelProperty(value = "属性的类型；0->规格；1->参数")
    private String type;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getProductAttributeCategoryId() {
        return productAttributeCategoryId;
    }

    public void setProductAttributeCategoryId(Long productAttributeCategoryId) {
        this.productAttributeCategoryId = productAttributeCategoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSelectType() {
        return selectType;
    }

    public void setSelectType(String selectType) {
        this.selectType = selectType;
    }

    public String getInputType() {
        return inputType;
    }

    public void setInputType(String inputType) {
        this.inputType = inputType;
    }

    public String getInputList() {
        return inputList;
    }

    public void setInputList(String inputList) {
        this.inputList = inputList;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getFilterType() {
        return filterType;
    }

    public void setFilterType(String filterType) {
        this.filterType = filterType;
    }

    public String getSearchType() {
        return searchType;
    }

    public void setSearchType(String searchType) {
        this.searchType = searchType;
    }

    public String getRelatedStatus() {
        return relatedStatus;
    }

    public void setRelatedStatus(String relatedStatus) {
        this.relatedStatus = relatedStatus;
    }

    public String getHandAddStatus() {
        return handAddStatus;
    }

    public void setHandAddStatus(String handAddStatus) {
        this.handAddStatus = handAddStatus;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", productAttributeCategoryId=").append(productAttributeCategoryId);
        sb.append(", name=").append(name);
        sb.append(", selectType=").append(selectType);
        sb.append(", inputType=").append(inputType);
        sb.append(", inputList=").append(inputList);
        sb.append(", sort=").append(sort);
        sb.append(", filterType=").append(filterType);
        sb.append(", searchType=").append(searchType);
        sb.append(", relatedStatus=").append(relatedStatus);
        sb.append(", handAddStatus=").append(handAddStatus);
        sb.append(", type=").append(type);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}