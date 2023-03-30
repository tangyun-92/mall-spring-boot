package com.tang.mall.controller;

import com.github.pagehelper.PageInfo;
import com.tang.mall.common.ApiRestResponse;
import com.tang.mall.model.pojo.PmsBrand;
import com.tang.mall.model.request.AddPmsBrandReq;
import com.tang.mall.model.request.PmsBrandListReq;
import com.tang.mall.service.PmsBrandService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * 品牌Controller
 */
@Api(tags = "品牌管理")
@RestController
public class PmsBrandController {

    @Autowired
    PmsBrandService brandService;

    @ApiOperation("后台-品牌列表")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "name", value = "品牌名称", dataType = "String", paramType = "query"),
            @ApiImplicitParam(name = "factoryStatus", value = "是否为品牌制造商：0-不是 1-是", dataType = "Integer", paramType = "query"),
            @ApiImplicitParam(name = "pageNum", value = "当前第几页", dataType = "Integer", paramType = "query"),
            @ApiImplicitParam(name = "pageSize", value = "每页显示条数", dataType = "Integer", paramType = "query")
    })
    @GetMapping("/admin/brand/list")
    public ApiRestResponse list(PmsBrandListReq pmsBrandListReq) {
        PageInfo list = brandService.list(pmsBrandListReq);
        return ApiRestResponse.success(list);
    }

    @ApiOperation("后台-添加品牌")
    @PostMapping("/admin/brand/add")
    public ApiRestResponse add(@Valid @RequestBody AddPmsBrandReq addPmsBrandReq) {
        brandService.add(addPmsBrandReq);
        return ApiRestResponse.success();
    }

    @ApiOperation("后台-更新品牌")
    @PostMapping("/admin/brand/update")
    public ApiRestResponse update(@Valid @RequestBody PmsBrand pmsBrand) {
        brandService.update(pmsBrand);
        return ApiRestResponse.success();
    }

    @ApiOperation("后台-删除品牌")
    @PostMapping("/admin/brand/delete")
    public ApiRestResponse delete(@RequestParam Long id) {
        brandService.delete(id);
        return ApiRestResponse.success();
    }

}
