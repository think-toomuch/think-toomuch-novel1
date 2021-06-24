package top.atpisher.thinktoomuch.novel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.atpisher.thinktoomuch.novel.dao.ChapterContentMapper;
import top.atpisher.thinktoomuch.novel.dao.ChapterMapper;
import top.atpisher.thinktoomuch.novel.dao.NovelMapper;
import top.atpisher.thinktoomuch.novel.model.Chapter;
import top.atpisher.thinktoomuch.novel.model.ChapterContent;
import top.atpisher.thinktoomuch.novel.model.Novel;
import top.atpisher.thinktoomuch.novel.model.dto.BaseResult;
import top.atpisher.thinktoomuch.novel.model.dto.PageInfo;
import top.atpisher.thinktoomuch.novel.service.ChapterService;
import top.atpisher.thinktoomuch.novel.service.NovelService;
import top.atpisher.thinktoomuch.novel.utils.BeanValidator;
import top.atpisher.thinktoomuch.novel.utils.NovelAPI;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName: NovelServiceImpl
 * @Author: l1957
 * @Date: 2021/6/9 16:22
 * @Description: TODO
 */
@Service
public class NovelServiceImpl implements NovelService {
    @Autowired
    NovelMapper novelMapper;
    @Autowired
    ChapterMapper chapterMapper;
    @Autowired
    ChapterService chapterService;
    @Autowired
    NovelService novelService;
    @Autowired
    ChapterContentMapper chapterContentMapper;
    @Override
    public Novel getNovelById(Integer id) {
        return novelMapper.getNovelById(id);
    }

    @Override
    public BaseResult save(Novel novel) {
        novel.setUpdatetime(new Date());
        novel.setCreatetime(new Date());
        //验证数据是否合法
        String validator = BeanValidator.validator(novel);
        if (validator != null) {
            return BaseResult.fail(validator);
        }
        //验证通过
        else {
            //新增分类
            if (novel.getId() == null) {
                insert(novel);
            }
            //编辑分类
            else {
                update(novel);
            }
            return BaseResult.success("保存分类信息成功");
        }
    }

    @Override
    public void insert(Novel novel) {
        novelMapper.insert(novel);
    }

    @Override
    public void update(Novel novel) {
        novelMapper.update(novel);
    }

    @Override
    public void deleteNovelsById(Integer[] ids) {
        novelMapper.deleteNovelsById(ids);
    }

    @Override
    public PageInfo<Novel> page(int start, int length, int draw, Novel novel) {
        int count = novelMapper.count(novel);

        Map<String, Object> parms = new HashMap<>();
        parms.put("start", start);
        parms.put("length", length);
        parms.put("novel", novel);

        PageInfo<Novel> pageInfo = new PageInfo<>();
        pageInfo.setDraw(draw);
        pageInfo.setRecordsTotal(count);
        pageInfo.setRecordsFiltered(count);
        pageInfo.setData(novelMapper.page(parms));

        return pageInfo;
    }

    @Override
    public List<Novel> selectNovelByKeyWord(String keyword) {
        List<Novel> lists=novelMapper.selectNovelByKeyWord(keyword);
        for(Novel novel:lists)
            novel.setLatestchapter(chapterService.latestChapter(novel.getNid(),1).get(0));
        return lists;
    }

    @Override
    public List<Novel> randomSelectNovel(int number,String ntype) {
        Map<String,Object> map=new HashMap<>();
        map.put("number",number);
        map.put("ntype",ntype);
        return novelMapper.randomSelectNovel(map);
    }

    @Override
    public List<Novel> latestNovel(int number,String ntype) {
        Map<String,Object> map=new HashMap<>();
        map.put("number",number);
        map.put("ntype",ntype);
        List<Novel> lists=novelMapper.latestNovel(map);
        for(Novel novel:lists)
            novel.setLatestchapter(chapterService.latestChapter(novel.getNid(),1).get(0));
        return lists;
    }

    @Override
    public List<Novel> latestUpdateNovel(int number,String ntype) {
        Map<String,Object> map=new HashMap<>();
        map.put("number",number);
        map.put("ntype",ntype);
        return novelMapper.latestUpdateNovel(map);
    }

    @Override
    public Novel getNovelByNid(String nid) {
        return novelMapper.getNovelByNid(nid);
    }

}
