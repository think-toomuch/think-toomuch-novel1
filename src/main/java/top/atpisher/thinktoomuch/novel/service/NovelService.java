package top.atpisher.thinktoomuch.novel.service;

import top.atpisher.thinktoomuch.novel.model.Novel;
import top.atpisher.thinktoomuch.novel.model.dto.BaseResult;
import top.atpisher.thinktoomuch.novel.model.dto.PageInfo;

import java.util.List;

/**
 * @ClassName: NovelService
 * @Author: l1957
 * @Date: 2021/6/9 16:18
 * @Description: TODO
 */
public interface NovelService {
    Novel getNovelById(Integer id);
    /**
     *提交保存功能
     * @param novel
     */
    BaseResult save(Novel novel);
    /**
     * 插入一个分类
     * @param novel
     */
    void insert(Novel novel);
    /**
     * 插入一个分类
     * @param novel
     */
    void update(Novel novel);

    /**
     * 批量删除
     * @param ids
     */
    void deleteNovelsById(Integer[] ids);
    /**
     * 分页查询
     * @param start
     * @param length
     * @return
     */
    PageInfo<Novel> page(int start, int length, int draw, Novel novel);

    List<Novel> selectNovelByKeyWord(String keyword);
    /**
     * 随机选取小说展示
     * @param number
     * @return
     */
    List<Novel> randomSelectNovel(int number,String ntype);
    /**
     * 获取最新入库小说
     * @param number
     * @return
     */
    List<Novel> latestNovel(int number,String ntype);
    /**
     * 最近更新小说
     * @param number
     * @return
     */
    List<Novel> latestUpdateNovel (int number,String ntype);

    /**
     * 通过nid获取小说
     * @param nid
     */
    Novel getNovelByNid(String nid);}
