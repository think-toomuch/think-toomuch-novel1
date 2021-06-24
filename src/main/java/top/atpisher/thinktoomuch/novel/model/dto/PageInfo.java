package top.atpisher.thinktoomuch.novel.model.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**分页数据传输对象
 * @ClassName: PageInfo
 * @Author: l1957
 * @Date: 2021/6/4 10:24
 * @Description: TODO
 */
@Data
public class PageInfo<T> implements Serializable {
        private int draw;
        //记录总数
        private int recordsTotal;
        //过滤后的总记录数
        private int recordsFiltered;
        //要在表中显示的数据
        private List<T> data;
        //如果服务端发生了异常，你可以定义一个错误来描述服务器出了问题来通知用户该错误。
        private String error;
}
