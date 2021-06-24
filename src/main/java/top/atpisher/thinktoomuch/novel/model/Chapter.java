package top.atpisher.thinktoomuch.novel.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * @ClassName: Chapter
 * @Author: l1957
 * @Date: 2021/3/27 14:32
 * @Description: 小说章节
 */
@Data
public class Chapter {
    private Integer id;
    private String nid;    //小说id
    private String cid;   //章节id
    private String cname; //章节标题
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date createtime;


}