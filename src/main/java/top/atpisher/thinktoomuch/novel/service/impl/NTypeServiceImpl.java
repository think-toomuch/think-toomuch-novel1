package top.atpisher.thinktoomuch.novel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.atpisher.thinktoomuch.novel.dao.NTypeMapper;
import top.atpisher.thinktoomuch.novel.model.Manager;
import top.atpisher.thinktoomuch.novel.model.NovelType;
import top.atpisher.thinktoomuch.novel.model.dto.BaseResult;
import top.atpisher.thinktoomuch.novel.model.dto.PageInfo;
import top.atpisher.thinktoomuch.novel.service.NTypeService;
import top.atpisher.thinktoomuch.novel.utils.BeanValidator;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName: NTypeServiceImpl
 * @Author: l1957
 * @Date: 2021/6/8 08:23
 * @Description: TODO
 */
@Service
public class NTypeServiceImpl implements NTypeService {
    @Autowired
    NTypeMapper nTypeMapper;

    @Override
    public NovelType getTypeById(Integer id) {
        return nTypeMapper.getTypeById(id);
    }

    @Override
    public List<NovelType> getAllType() {
        return nTypeMapper.getAllType();
    }

    @Override
    public BaseResult save(NovelType novelType) {
        //验证数据是否合法
        String validator = BeanValidator.validator(novelType);
        if (validator != null) {
            return BaseResult.fail(validator);
        }
        //验证通过
        else {
            //新增分类
            if (novelType.getId() == null) {
                insert(novelType);
            }
            //编辑分类
            else {
                update(novelType);
            }
            return BaseResult.success("保存分类信息成功");
        }
    }

    @Override
    public void insert(NovelType novelType) {
        nTypeMapper.insert(novelType);
    }

    @Override
    public void update(NovelType novelType) {
        nTypeMapper.update(novelType);
    }

    @Override
    public void deleteTypesById(Integer[] ids) {
        nTypeMapper.deleteTypesById(ids);
    }

    @Override
    public PageInfo<NovelType> page(int start, int length, int draw, NovelType novelType) {
        int count = nTypeMapper.count(novelType);

        Map<String, Object> parms = new HashMap<>();
        parms.put("start", start);
        parms.put("length", length);
        parms.put("novelType", novelType);

        PageInfo<NovelType> pageInfo = new PageInfo<>();
        pageInfo.setDraw(draw);
        pageInfo.setRecordsTotal(count);
        pageInfo.setRecordsFiltered(count);
        pageInfo.setData(nTypeMapper.page(parms));

        return pageInfo;
    }
}
