package com.tang.mall.controller;

import com.github.pagehelper.PageInfo;
import com.tang.mall.common.ApiRestResponse;
import com.tang.mall.dto.PmsBrandUpdateParam;
import com.tang.mall.dto.PmsBrandAddParam;
import com.tang.mall.dto.PmsBrandListParam;
import com.tang.mall.service.PmsBrandService;
import com.tang.mall.service.impl.PageBean;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * 品牌Controller
 */
@Api(tags = "brand-management-admin")
@RestController
public class PmsBrandController {

    @Autowired
    PmsBrandService brandService;

    @ApiOperation("后台-品牌列表")
//    @ApiImplicitParams({
//            @ApiImplicitParam(name = "name", value = "品牌名称", dataType = "String", paramType = "query"),
//            @ApiImplicitParam(name = "factoryStatus", value = "是否为品牌制造商：0-不是 1-是", dataType = "Long", paramType = "query"),
//            @ApiImplicitParam(name = "pageNum", value = "当前第几页", dataType = "Long", paramType = "query"),
//            @ApiImplicitParam(name = "pageSize", value = "每页显示条数", dataType = "Long", paramType = "query")
//    })
    @GetMapping("/admin/brand/list")
    @PreAuthorize("hasAuthority('pms:brand:read')")
    public ApiRestResponse getBrandList(PmsBrandListParam pmsBrandListParam) {
        PageBean list = brandService.list(pmsBrandListParam);
        return ApiRestResponse.success(list);
    }

    @ApiOperation("后台-添加品牌")
    @PostMapping("/admin/brand/add")
    @PreAuthorize("hasAuthority('pms:brand:create')")
    public ApiRestResponse addBrand(@Valid @RequestBody PmsBrandAddParam pmsBrandAddParam) {
        brandService.add(pmsBrandAddParam);
        return ApiRestResponse.success();
    }

    @ApiOperation("后台-更新品牌")
    @PostMapping("/admin/brand/update")
    @PreAuthorize("hasAuthority('pms:brand:update')")
    public ApiRestResponse updateBrand(@Valid @RequestBody PmsBrandUpdateParam pmsBrandUpdateParam) {
        brandService.update(pmsBrandUpdateParam);
        return ApiRestResponse.success();
    }

    @ApiOperation("后台-删除品牌")
    @PostMapping("/admin/brand/delete")
    @PreAuthorize("hasAuthority('pms:brand:delete')")
    public ApiRestResponse deleteBrand(@RequestParam Long id) {
        brandService.delete(id);
        return ApiRestResponse.success();
    }

}
