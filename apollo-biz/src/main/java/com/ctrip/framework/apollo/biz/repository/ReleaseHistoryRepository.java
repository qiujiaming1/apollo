package com.ctrip.framework.apollo.biz.repository;

import com.ctrip.framework.apollo.biz.entity.ReleaseHistory;
import java.util.Set;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

/** @author Jason Song(song_s@ctrip.com) */
public interface ReleaseHistoryRepository extends PagingAndSortingRepository<ReleaseHistory, Long> {
  Page<ReleaseHistory> findByAppIdAndClusterNameAndNamespaceNameOrderByIdDesc(
      String appId, String clusterName, String namespaceName, Pageable pageable);

  Page<ReleaseHistory> findByReleaseIdAndOperationOrderByIdDesc(
      long releaseId, int operation, Pageable pageable);

  Page<ReleaseHistory> findByPreviousReleaseIdAndOperationOrderByIdDesc(
      long previousReleaseId, int operation, Pageable pageable);

  Page<ReleaseHistory> findByReleaseIdAndOperationInOrderByIdDesc(
      long releaseId, Set<Integer> operations, Pageable pageable);

  @Modifying
  @Query(
      nativeQuery = true,
      value =
          "update \"ReleaseHistory\" set \"IsDeleted\"=1,\"DataChange_LastModifiedBy\" = ?4 where \"AppId\"=?1 and \"ClusterName\"=?2 and \"NamespaceName\" = ?3")
  int batchDelete(String appId, String clusterName, String namespaceName, String operator);
}
