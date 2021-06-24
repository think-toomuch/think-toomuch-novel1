package top.atpisher.thinktoomuch.novel.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * @ClassName: Novel
 * @Author: l1957
 * @Date: 2021/3/27 13:57
 * @Description: 小说搜索结果
 */
@Data
public class Novel {
    private Integer id;
    private String nid;    //小说id
    private String nname;   //小说标题
    private String nauthor; //小说作者
    private String description; //小说简介
    private String nphoto;  //小说封面
    private String ntype;   //小说类型
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date updatetime;//更新时间
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date createtime;//创建时间
    
    private Chapter latestchapter;


}
