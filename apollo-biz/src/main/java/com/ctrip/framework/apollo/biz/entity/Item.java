package com.ctrip.framework.apollo.biz.entity;

import com.ctrip.framework.apollo.common.entity.BaseEntity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.Table;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

@Entity
@Table(name = "Item")
@SQLDelete(sql = "Update \"Item\" set \"IsDeleted\" = 1 where \"Id\" = ?")
@Where(clause = "\"IsDeleted\" = 0")
public class Item extends BaseEntity {

  @Column(name = "NamespaceId", nullable = false)
  private long namespaceId;

  @Column(name = "Key", nullable = false)
  private String key;

  @Column(name = "Value")
  @Lob
  private String value;

  @Column(name = "Comment")
  private String comment;

  @Column(name = "LineNum")
  private Integer lineNum;

  public String getComment() {
    return comment;
  }

  public String getKey() {
    return key;
  }

  public long getNamespaceId() {
    return namespaceId;
  }

  public String getValue() {
    return value;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }

  public void setKey(String key) {
    this.key = key;
  }

  public void setNamespaceId(long namespaceId) {
    this.namespaceId = namespaceId;
  }

  public void setValue(String value) {
    this.value = value;
  }

  public Integer getLineNum() {
    return lineNum;
  }

  public void setLineNum(Integer lineNum) {
    this.lineNum = lineNum;
  }

  public String toString() {
    return toStringHelper()
        .add("namespaceId", namespaceId)
        .add("key", key)
        .add("value", value)
        .add("lineNum", lineNum)
        .add("comment", comment)
        .toString();
  }
}
