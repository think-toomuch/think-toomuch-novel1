package top.atpisher.thinktoomuch.novel.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import top.atpisher.thinktoomuch.novel.model.Novel;

import java.util.List;
import java.util.Map;

/**
 * @ClassName: NovelMapper
 * @Author: l1957
 * @Date: 2021/4/15 23:00
 * @Description: TODO
 */
@Repository
@Mapper
public interface NovelMapper {
    /**
     * 通过id获取小说
     * @param id
     */
    Novel getNovelById(Integer id);
    /**
     * 插入一本小说
     * @param novel
     */
    void insert(Novel novel);

    void update(Novel novel);
    /**
     * 批量删除
     * @param ids
     */
    void deleteNovelsById(Integer[] ids);

    /**
     * 分页查询
     * @param parms 需要2个参数,start/记录开始的位置,length/每页的记录数
     * @return
     */
    List<Novel> page(Map<String,Object> parms);

    /**
     * 查询总记录数
     * @param novel
     * @return
     */
    int count(Novel novel);

    /**
     *
     * @param keyword
     * @return
     */
    List<Novel> selectNovelByKeyWord(String keyword);

    /**
     * 随机选取小说展示,random 2个参数，一个数量，一个分类
     * @param random
     * @return
     */
    List<Novel> randomSelectNovel(Map<String,Object> random);

    /**
     * 获取最新入库小说
     * @param parms number,nType
     * @return
     */
    List<Novel> latestNovel(Map<String,Object> parms);

    /**
     * 最近更新小说
     * @param parms number,nType
     * @return
     */
    List<Novel> latestUpdateNovel (Map<String,Object> parms);

    /**
     * 通过nid获取小说
     * @param nid
     */
    Novel getNovelByNid(String nid);
    List<String> getAllNid();
}
