package top.atpisher.thinktoomuch.novel.model;

import lombok.Data;

/**
 * @ClassName: ChapterContent
 * @Author: l1957
 * @Date: 2021/3/27 15:06
 * @Description: 章节内容
 */
@Data
public class ChapterContent {
    private Integer id;
    private String nid;    //小说id
    private String cid;   //章节id
    private String ccontent; //章节内容
    private String contentid;//内容id

}