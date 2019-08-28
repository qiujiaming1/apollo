package com.ctrip.framework.apollo.biz.repository;

import com.ctrip.framework.apollo.biz.entity.Namespace;
import java.util.List;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface NamespaceRepository extends PagingAndSortingRepository<Namespace, Long> {

  List<Namespace> findByAppIdAndClusterNameOrderByIdAsc(String appId, String clusterName);

  Namespace findByAppIdAndClusterNameAndNamespaceName(
      String appId, String clusterName, String namespaceName);

  @Modifying
  @Query(
      nativeQuery = true,
      value =
          "update \"Namespace\" set \"IsDeleted\"=1,\"DataChange_LastModifiedBy\" = ?3 where \"AppId\"=?1 and \"ClusterName\"=?2")
  int batchDelete(String appId, String clusterName, String operator);

  List<Namespace> findByAppIdAndNamespaceNameOrderByIdAsc(String appId, String namespaceName);

  List<Namespace> findByNamespaceName(String namespaceName, Pageable page);

  int countByNamespaceNameAndAppIdNot(String namespaceName, String appId);
}
