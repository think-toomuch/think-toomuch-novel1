package top.atpisher.thinktoomuch.novel.model;

import lombok.Data;
import org.hibernate.validator.constraints.Length;

/**
 * @ClassName: Manager
 * @Author: l1957
 * @Date: 2021/4/1 21:25
 * @Description: TODO
 */
@Data
public class Manager {
    private Integer id;
    private String mname;
    @Length(min = 3, message = "密码长度必须大于2位")
    private String mpwd;
    private String memail;
}
