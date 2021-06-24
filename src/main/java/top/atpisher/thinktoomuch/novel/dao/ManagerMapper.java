package top.atpisher.thinktoomuch.novel.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import top.atpisher.thinktoomuch.novel.model.Manager;

import java.util.List;
import java.util.Map;

/**
 * @ClassName: ManagerMapper
 * @Author: l1957
 * @Date: 2021/4/1 21:29
 * @Description: TODO
 */
@Repository
@Mapper
public interface ManagerMapper {
    /**
     * 根据用户名和密码查询用户
     * @param manager
     * @return
     */
    Manager selectByNameAndPwd(Manager manager);

    /**
     * 根据id删除一个用户
     * @param id
     */
    void delete(int id);

    /**
     * 插入一个用户
     * @param manager
     */
    void insert(Manager manager);
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
     * 批量删除
     * @param ids
     */
    void deleteUsersById(Integer[] ids);

    /**
     * 分页查询
     * @param parms 需要2个参数,start/记录开始的位置,length/每页的记录数
     * @return
     */
    List<Manager> page(Map<String,Object> parms);

    /**
     * 查询总记录数
     * @param manager
     * @return
     */
    int count(Manager manager);

    List<Manager> findAllManagers();

}
