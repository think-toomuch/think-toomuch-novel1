package top.atpisher.thinktoomuch.novel.service;

import top.atpisher.thinktoomuch.novel.model.Chapter;
import top.atpisher.thinktoomuch.novel.model.ChapterContent;
import top.atpisher.thinktoomuch.novel.model.dto.BaseResult;
import top.atpisher.thinktoomuch.novel.model.dto.PageInfo;

import java.util.List;

/**
 * @ClassName: ChapterService
 * @Author: l1957
 * @Date: 2021/4/15 23:44
 * @Description: TODO
 */
public interface ChapterService {
    Chapter getChapterById(Integer id);
    /**
     * 通过cid获取章节
     * @param cid
     */
    Chapter getChapterByCid(String cid);
    /**
     *提交保存功能
     * @param chapter
     */
    BaseResult save(Chapter chapter);
    /**
     * 插入一个章节
     * @param chapter
     */
    void insert(Chapter chapter);
    /**
     * 更新一个章节
     * @param chapter
     */
    void update(Chapter chapter);

    /**
     * 批量删除
     * @param ids
     */
    void deleteChaptersById(Integer[] ids);
    /**
     * 分页查询
     * @param start
     * @param length
     * @return
     */
    PageInfo<Chapter> page(int start, int length, int draw, Chapter chapter);
    /**
     * 获取小说最新章节
     * @param nid
     * @return
     */
    List<Chapter> latestChapter(String nid,int number);
    /**
     * 根据nid查询小说全部章节
     * @param nid
     * @return
     */
    List<Chapter> selectChapterByNid(String nid);



}
