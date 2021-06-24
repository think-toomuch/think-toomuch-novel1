package top.atpisher.thinktoomuch.novel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import top.atpisher.thinktoomuch.novel.dao.ChapterMapper;
import top.atpisher.thinktoomuch.novel.dao.NovelMapper;
import top.atpisher.thinktoomuch.novel.model.Chapter;
import top.atpisher.thinktoomuch.novel.model.Novel;
import top.atpisher.thinktoomuch.novel.model.dto.BaseResult;
import top.atpisher.thinktoomuch.novel.model.dto.PageInfo;
import top.atpisher.thinktoomuch.novel.service.ChapterService;
import top.atpisher.thinktoomuch.novel.utils.BeanValidator;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName: ChapterServiceImpl
 * @Author: l1957
 * @Date: 2021/4/15 23:44
 * @Description: TODO
 */
@Service
@Transactional
public class ChapterServiceImpl implements ChapterService {
    @Autowired
    ChapterMapper chapterMapper;
    @Override
    public Chapter getChapterById(Integer id) {
        return chapterMapper.getChapterById(id);
    }

    @Override
    public Chapter getChapterByCid(String cid) {
        return chapterMapper.getChapterByCid(cid);
    }

    @Override
    public BaseResult save(Chapter chapter) {
        chapter.setCreatetime(new Date());
        //验证数据是否合法
        String validator = BeanValidator.validator(chapter);
        if (validator != null) {
            return BaseResult.fail(validator);
        }
        //验证通过
        else {
            //新增分类
            if (chapter.getId() == null) {
                insert(chapter);
            }
            //编辑分类
            else {
                update(chapter);
            }
            return BaseResult.success("保存分类信息成功");
        }
    }

    @Override
    public void insert(Chapter chapter) {
        chapterMapper.insert(chapter);
    }

    @Override
    public void update(Chapter chapter) {
        chapterMapper.update(chapter);
    }

    @Override
    public void deleteChaptersById(Integer[] ids) {
        chapterMapper.deleteChaptersById(ids);
    }

    @Override
    public PageInfo<Chapter> page(int start, int length, int draw, Chapter chapter) {
        int count = chapterMapper.count(chapter);

        Map<String, Object> parms = new HashMap<>();
        parms.put("start", start);
        parms.put("length", length);
        parms.put("chapter", chapter);

        PageInfo<Chapter> pageInfo = new PageInfo<>();
        pageInfo.setDraw(draw);
        pageInfo.setRecordsTotal(count);
        pageInfo.setRecordsFiltered(count);
        pageInfo.setData(chapterMapper.page(parms));

        return pageInfo;
    }

    @Override
    public List<Chapter> latestChapter(String nid,int number) {
        Map<String, Object> parms = new HashMap<>();
        parms.put("nid", nid);
        parms.put("number", number);
        return chapterMapper.latestChapter(parms);
    }

    @Override
    public List<Chapter> selectChapterByNid(String nid) {
        return chapterMapper.selectChapterByNid(nid);
    }
}
