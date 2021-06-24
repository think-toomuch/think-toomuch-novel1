package top.atpisher.thinktoomuch.novel.service;

import org.springframework.web.multipart.MultipartFile;
import top.atpisher.thinktoomuch.novel.model.Manager;
import top.atpisher.thinktoomuch.novel.model.dto.BaseResult;
import top.atpisher.thinktoomuch.novel.model.dto.PageInfo;

import javax.servlet.ServletOutputStream;
import java.util.List;

/**
 * @ClassName: ManageService
 * @Author: l1957
 * @Date: 2021/4/8 21:58
 * @Description: TODO
 */
public interface ManagerService {
    /**
     * 判断是否成功登陆
     * @param mname
     * @param mpwd
     * @return
     */
    boolean login(String mname,String mpwd);

    /**
     * 根据id删除用户
     * @param id
     */
    void delete(int id);

    /**
     * 插入一个用户
     * @param manager
     */
    void insert(Manager manager);

    void addManagers(List<Manager> managers);
    /**
     * 通过id查询用户信息
     * @param id
     * @return
     */
    Manager getById(Integer id);

    /**
     * 更新
     * @param manager
     */
    void update(Manager manager);

    /**
     *提交保存功能
     * @param manager
     */
    BaseResult save(Manager manager);

    /**
     * 导入数据
     * @param multipartFile
     * @return
     */
    BaseResult read(MultipartFile multipartFile);

    /**
     * 批量删除
     * @param ids
     */
    void deleteUsersById(Integer[] ids);

    /**
     * 分页查询
     * @param start
     * @param length
     * @return
     */
    PageInfo<Manager> page(int start, int length, int draw, Manager manager);

    /**
     * 查询记录总条数
     * @return
     */
    int count(Manager manager);

    /**
     * 导出数据
     * @param titles
     * @param out
     * @throws Exception
     */
    void export(String[] titles, ServletOutputStream out) throws Exception;

}
