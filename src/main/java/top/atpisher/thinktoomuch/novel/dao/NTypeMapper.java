package top.atpisher.thinktoomuch.novel.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import top.atpisher.thinktoomuch.novel.model.NovelType;

import java.util.List;
import java.util.Map;

/**
 * @ClassName: NTypeMapper
 * @Author: l1957
 * @Date: 2021/6/8 08:19
 * @Description: TODO
 */
@Mapper
@Repository
public interface NTypeMapper {
    /**
     * 通过id获取分类
     * @param id
     */
    NovelType getTypeById(Integer id);
    /**
     * 获取所有分类
     * @param
     */
    List<NovelType> getAllType();
    /**
     * 插入一个用户
     * @param novelType
     */
    void insert(NovelType novelType);

    void update(NovelType novelType);
    /**
     * 批量删除
     * @param ids
     */
    void deleteTypesById(Integer[] ids);

    /**
     * 分页查询
     * @param parms 需要2个参数,start/记录开始的位置,length/每页的记录数
     * @return
     */
    List<NovelType> page(Map<String,Object> parms);

    /**
     * 查询总记录数
     * @param novelType
     * @return
     */
    int count(NovelType novelType);
}
