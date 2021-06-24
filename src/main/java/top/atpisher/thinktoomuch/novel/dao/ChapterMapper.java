package top.atpisher.thinktoomuch.novel.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import top.atpisher.thinktoomuch.novel.model.Chapter;
import top.atpisher.thinktoomuch.novel.model.Novel;

import java.util.List;
import java.util.Map;

/**
 * @ClassName: ChapterMapper
 * @Author: l1957
 * @Date: 2021/4/15 23:01
 * @Description: TODO
 */
@Mapper
@Repository
public interface ChapterMapper {
    /**
     * 通过id获取章节
     * @param id
     */
    Chapter getChapterById(Integer id);
    /**
     * 通过cid获取章节
     * @param cid
     */
    Chapter getChapterByCid(String cid);
    /**
     * 插入一个章节
     * @param chapter
     */
    void insert(Chapter chapter);

    void update(Chapter chapter);
    /**
     * 批量删除
     * @param ids
     */
    void deleteChaptersById(Integer[] ids);

    /**
     * 分页查询
     * @param parms 需要2个参数,start/记录开始的位置,length/每页的记录数
     * @return
     */
    List<Chapter> page(Map<String,Object> parms);

    /**
     * 查询总记录数
     * @param chapter
     * @return
     */
    int count(Chapter chapter);

    /**
     * 获取小说最新章节
     * @param parms nid, number
     *
     * @return
     */
    List<Chapter> latestChapter(Map parms);

    /**
     * 根据nid查询小说全部章节
     * @param nid
     * @return
     */
    List<Chapter> selectChapterByNid(String nid);

    List<String> getAllCid();
}
