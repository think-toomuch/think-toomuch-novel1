package top.atpisher.thinktoomuch.novel.service;

import top.atpisher.thinktoomuch.novel.model.Manager;
import top.atpisher.thinktoomuch.novel.model.NovelType;
import top.atpisher.thinktoomuch.novel.model.dto.BaseResult;
import top.atpisher.thinktoomuch.novel.model.dto.PageInfo;

import java.util.List;

/**
 * @ClassName: NTypeService
 * @Author: l1957
 * @Date: 2021/6/8 08:23
 * @Description: TODO
 */
public interface NTypeService {
    NovelType getTypeById(Integer id);
    /**
     * 获取所有分类
     * @param
     */
    List<NovelType> getAllType();
    /**
     *提交保存功能
     * @param novelType
     */
    BaseResult save(NovelType novelType);
    /**
     * 插入一个分类
     * @param novelType
     */
    void insert(NovelType novelType);
    /**
     * 插入一个分类
     * @param novelType
     */
    void update(NovelType novelType);

    /**
     * 批量删除
     * @param ids
     */
    void deleteTypesById(Integer[] ids);
    /**
     * 分页查询
     * @param start
     * @param length
     * @return
     */
    PageInfo<NovelType> page(int start, int length, int draw, NovelType novelType);
}
