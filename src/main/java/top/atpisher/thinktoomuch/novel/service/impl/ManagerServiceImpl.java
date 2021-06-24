package top.atpisher.thinktoomuch.novel.service.impl;

import org.apache.poi.hssf.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;
import org.springframework.web.multipart.MultipartFile;
import top.atpisher.thinktoomuch.novel.dao.ManagerMapper;
import top.atpisher.thinktoomuch.novel.model.Manager;
import top.atpisher.thinktoomuch.novel.model.dto.BaseResult;
import top.atpisher.thinktoomuch.novel.model.dto.PageInfo;
import top.atpisher.thinktoomuch.novel.service.ManagerService;
import top.atpisher.thinktoomuch.novel.utils.BeanValidator;
import top.atpisher.thinktoomuch.novel.utils.POIUtils;

import javax.servlet.ServletOutputStream;
import java.io.IOException;
import java.util.*;


/**
 * @ClassName: ManageServiceImpl
 * @Author: l1957
 * @Date: 2021/4/8 21:59
 * @Description: TODO
 */
@Service
@Transactional
public class ManagerServiceImpl implements ManagerService {
    @Autowired
    ManagerMapper managerMapper;

    public boolean login(String mname, String mpwd) {
        Manager manager=new Manager();
        manager.setMname(mname);
        manager.setMpwd(DigestUtils.md5DigestAsHex(mpwd.getBytes()));
        if(managerMapper.selectByNameAndPwd(manager)!=null)
            return true;
        else
            return false;
    }
    @Override
    public void delete(int id) {
        managerMapper.delete(id);
    }

    public void insert(Manager manager) {
        //密码加密
        manager.setMpwd(DigestUtils.md5DigestAsHex(manager.getMpwd().getBytes()));
        managerMapper.insert(manager);
    }

    @Override
    public void addManagers(List<Manager> managers) {
        Set<Integer> dic=new HashSet<>();
        List<Manager> managers1= managerMapper.findAllManagers();
        for(Manager manager:managers1){
            dic.add(manager.getId());
        }
        for(Manager manager:managers){
            if(dic.contains(manager.getId())){

            }else {
                insert(manager);
                dic.add(manager.getId());
            }

        }

    }

    public Manager getById(Integer id) {
        return managerMapper.getById(id);
    }

    public void update(Manager manager) {
        //没加密先加密，已经加密过的没有修改的不变
        if(manager.getMpwd().length()!=32){
            manager.setMpwd(DigestUtils.md5DigestAsHex(manager.getMpwd().getBytes()));
        }

        managerMapper.update(manager);
    }

    public BaseResult save(Manager manager) {
        //验证数据是否合法
        String validator = BeanValidator.validator(manager);
        if (validator != null) {
            return BaseResult.fail(validator);
        }
        //验证通过
        else {
            //新增用户
            if (manager.getId() == null) {
                insert(manager);
            }
            //编辑用户
            else {
                update(manager);
            }
            return BaseResult.success("保存用户信息成功");
        }
    }

    @Override
    public BaseResult read(MultipartFile multipartFile) {
        List<String[]> lists;
        try {
            lists = POIUtils.readExcel(multipartFile);
            List<Manager> managers = new ArrayList<>();
                for(int i=0;i<lists.size()-1;i++){
                    String[]  str=lists.get(i);
                //根据具体实体类添加字段
                Manager manager = new Manager();
                manager.setId(Integer.parseInt(str[0]));
                manager.setMname(str[1]);
                manager.setMpwd(str[2]);
                manager.setMemail(str[3]);
                managers.add(manager);
            }
            addManagers(managers);
            return BaseResult.success("导入成功");
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return BaseResult.fail("导入失败");
        }
    }

    public void deleteUsersById(Integer[] ids) {
        managerMapper.deleteUsersById(ids);
    }

    public PageInfo<Manager> page(int start, int length, int draw, Manager manager) {
        int count = managerMapper.count(manager);

        Map<String, Object> parms = new HashMap<>();
        parms.put("start", start);
        parms.put("length", length);
        parms.put("manager", manager);

        PageInfo<Manager> pageInfo = new PageInfo<>();
        pageInfo.setDraw(draw);
        pageInfo.setRecordsTotal(count);
        pageInfo.setRecordsFiltered(count);
        pageInfo.setData(managerMapper.page(parms));

        return pageInfo;
    }

    public int count(Manager manager) {
        return managerMapper.count(manager);
    }

    @Override
    public void export(String[] titles, ServletOutputStream out) throws Exception {
        try{
            // 第一步，创建一个workbook，对应一个Excel文件
            HSSFWorkbook workbook = new HSSFWorkbook();
            // 第二步，在webbook中添加一个sheet,对应Excel文件中的sheet
            HSSFSheet hssfSheet = workbook.createSheet("sheet1");
            // 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制short
            HSSFRow row = hssfSheet.createRow(0);
            // 第四步，创建单元格，并设置值表头 设置表头居中
            HSSFCellStyle hssfCellStyle = workbook.createCellStyle();
            //居中样式
            hssfCellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
            HSSFCell hssfCell = null;
            for (int i = 0; i < titles.length; i++) {
                hssfCell = row.createCell(i);//列索引从0开始
                hssfCell.setCellValue(titles[i]);//列名1
                hssfCell.setCellStyle(hssfCellStyle);//列居中显示
            }
            List<Manager> list = managerMapper.findAllManagers();
            for (int i = 0; i < list.size(); i++) {
                row = hssfSheet.createRow(i+1);
                Manager manager = list.get(i);
                // 第六步，创建单元格，并设置值
                Integer  id = null;
                if(manager.getId() != null){
                    id = manager.getId();
                }
                row.createCell(0).setCellValue(id);
                String mname = "";
                if(manager.getMname() != null){
                    mname = manager.getMname();
                }
                row.createCell(1).setCellValue(mname);
                String mpwd = "";
                if(manager.getMpwd()!= null){
                    mpwd = manager.getMpwd();
                }
                row.createCell(2).setCellValue(mpwd);
                String memail = "";
                if(manager.getMemail()!= null){
                    memail = manager.getMemail();
                }
                row.createCell(3).setCellValue(memail);
            }
            // 第七步，将文件输出到客户端浏览器
            try {
                workbook.write(out);
                out.flush();
                out.close();
            }catch (Exception e) {
                e.printStackTrace();
            }
        }catch(Exception e){
            e.printStackTrace();
            throw new Exception("导出信息失败！");
        }
    }
}
