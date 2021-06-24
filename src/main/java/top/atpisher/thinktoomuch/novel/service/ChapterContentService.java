package top.atpisher.thinktoomuch.novel.service;

import top.atpisher.thinktoomuch.novel.model.Chapter;
import top.atpisher.thinktoomuch.novel.model.ChapterContent;
import top.atpisher.thinktoomuch.novel.model.dto.BaseResult;
import top.atpisher.thinktoomuch.novel.model.dto.PageInfo;

/**
 * @ClassName: ChapterContentService
 * @Author: l1957
 * @Date: 2021/6/23 17:07
 * @Description: TODO
 */
public interface ChapterContentService {
    ChapterContent getChapterContentById(Integer id);
    /**
     *提交保存功能
     * @param chapterContent
     */
    BaseResult save(ChapterContent chapterContent);
    /**
     * 插入一个章节内容
     * @param chapterContent
     */
    void insert(ChapterContent chapterContent);
    /**
     * 更新一个章节内容
     * @param chapterContent
     */
    void update(ChapterContent chapterContent);

    /**
     * 批量删除
     * @param ids
     */
    void deleteChapterContentsById(Integer[] ids);
    /**
     * 分页查询
     * @param start
     * @param length
     * @return
     */
    PageInfo<ChapterContent> page(int start, int length, int draw, ChapterContent chapterContent);

    ChapterContent selectContentByCid(String cid);
}
