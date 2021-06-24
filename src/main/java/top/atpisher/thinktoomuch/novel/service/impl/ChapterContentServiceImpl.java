package top.atpisher.thinktoomuch.novel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.atpisher.thinktoomuch.novel.dao.ChapterContentMapper;
import top.atpisher.thinktoomuch.novel.model.ChapterContent;
import top.atpisher.thinktoomuch.novel.model.dto.BaseResult;
import top.atpisher.thinktoomuch.novel.model.dto.PageInfo;
import top.atpisher.thinktoomuch.novel.service.ChapterContentService;
import top.atpisher.thinktoomuch.novel.utils.BeanValidator;

import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName: ChapterContentServiceImpl
 * @Author: l1957
 * @Date: 2021/6/23 17:18
 * @Description: TODO
 */
@Service
public class ChapterContentServiceImpl implements ChapterContentService {
    @Autowired
    ChapterContentMapper chapterContentMapper;
    @Override
    public ChapterContent getChapterContentById(Integer id) {
        return chapterContentMapper.getChapterContentById(id);
    }

    @Override
    public BaseResult save(ChapterContent chapterContent) {
        //验证数据是否合法
        String validator = BeanValidator.validator(chapterContent);
        if (validator != null) {
            return BaseResult.fail(validator);
        }
        //验证通过
        else {
            //新增内容
            if (chapterContent.getId() == null) {
                insert(chapterContent);
            }
            //编辑内容
            else {
                update(chapterContent);
            }
            return BaseResult.success("保存分类信息成功");
        }
    }

    @Override
    public void insert(ChapterContent chapterContent) {
        chapterContentMapper.insert(chapterContent);
    }

    @Override
    public void update(ChapterContent chapterContent) {
        chapterContentMapper.update(chapterContent);
    }

    @Override
    public void deleteChapterContentsById(Integer[] ids) {
        chapterContentMapper.deleteChapterContentsById(ids);
    }

    @Override
    public PageInfo<ChapterContent> page(int start, int length, int draw, ChapterContent chapterContent) {
        int count = chapterContentMapper.count(chapterContent);

        Map<String, Object> parms = new HashMap<>();
        parms.put("start", start);
        parms.put("length", length);
        parms.put("chapterContent", chapterContent);

        PageInfo<ChapterContent> pageInfo = new PageInfo<>();
        pageInfo.setDraw(draw);
        pageInfo.setRecordsTotal(count);
        pageInfo.setRecordsFiltered(count);
        pageInfo.setData(chapterContentMapper.page(parms));

        return pageInfo;
    }

    @Override
    public ChapterContent selectContentByCid(String cid) {
        return chapterContentMapper.selectContentByCid(cid);
    }
}
