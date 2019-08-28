package com.ctrip.framework.apollo.portal.repository;

import com.ctrip.framework.apollo.portal.entity.po.Permission;
import java.util.Collection;
import java.util.List;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

/** @author Jason Song(song_s@ctrip.com) */
public interface PermissionRepository extends PagingAndSortingRepository<Permission, Long> {
  /** find permission by permission type and targetId */
  Permission findTopByPermissionTypeAndTargetId(String permissionType, String targetId);

  /** find permissions by permission types and targetId */
  List<Permission> findByPermissionTypeInAndTargetId(
      Collection<String> permissionTypes, String targetId);

  @Query(
      nativeQuery = true,
      value =
          "SELECT \"Id\" from \"Permission\"  where \"TargetId\" = ?1 or \"TargetId\" like CONCAT(?1, '+%')")
  List<Long> findPermissionIdsByAppId(String appId);

  @Query(
      nativeQuery = true,
      value = "SELECT \"Id\" from \"Permission\"  where \"TargetId\" = CONCAT(CONCAT(?1, '+'), ?2)")
  List<Long> findPermissionIdsByAppIdAndNamespace(String appId, String namespaceName);

  @Modifying
  @Query(
      nativeQuery = true,
      value =
          "UPDATE \"Permission\" SET \"IsDeleted\"=1, \"DataChange_LastModifiedBy\" = ?2 WHERE \"Id\" in ?1")
  Integer batchDelete(List<Long> permissionIds, String operator);
}
