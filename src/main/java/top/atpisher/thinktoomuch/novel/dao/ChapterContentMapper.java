package top.atpisher.thinktoomuch.novel.dao;

import org.apache.ibatis.annotations.Mapper;
import top.atpisher.thinktoomuch.novel.model.Chapter;
import top.atpisher.thinktoomuch.novel.model.ChapterContent;

import java.util.List;
import java.util.Map;

/**
 * @ClassName: ChapterContentMapper
 * @Author: l1957
 * @Date: 2021/6/21 11:30
 * @Description: TODO
 */
@Mapper
public interface ChapterContentMapper {
    /**
     * 通过id获取章节内容
     * @param id
     */
    ChapterContent getChapterContentById(Integer id);
    void insert(ChapterContent chapterContent);
    void update(ChapterContent chapterContent);
    /**
     * 批量删除
     * @param ids
     */
    void deleteChapterContentsById(Integer[] ids);

    /**
     * 分页查询
     * @param parms 需要2个参数,start/记录开始的位置,length/每页的记录数
     * @return
     */
    List<ChapterContent> page(Map<String,Object> parms);

    /**
     * 查询总记录数
     * @param chapterContent
     * @return
     */
    int count(ChapterContent chapterContent);

    ChapterContent selectContentByCid(String cid);

}
