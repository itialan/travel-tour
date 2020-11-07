<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User</title>
</head>
<body>
	<div class="page has-sidebar-left height-full">
		<header class="blue accent-3 relative">
			<div class="container-fluid text-white">
				<div class="row p-t-b-10 ">
					<div class="col">
						<h4>
							<i class="icon-database"></i> Users
						</h4>
					</div>
				</div>
				<div class="row justify-content-between">
					<ul class="nav nav-material nav-material-white responsive-tab"
						id="v-pills-tab" role="tablist">
						<li><a class="nav-link active" id="v-pills-all-tab"
							data-toggle="pill" href="<c:url value='/admin/empl/list?page=1&limit=6'/>" role="tab"
							aria-controls="v-pills-all"><i class="icon icon-home2"></i>All
								Users</a></li>
						<li><a class="nav-link" id="v-pills-buyers-tab"
							data-toggle="pill" href="#v-pills-buyers" role="tab"
							aria-controls="v-pills-buyers"><i class="icon icon-face"></i>
								Buyers</a></li>
						<li><a class="nav-link" id="v-pills-sellers-tab"
							data-toggle="pill" href="#v-pills-sellers" role="tab"
							aria-controls="v-pills-sellers"><i
								class="icon  icon-local_shipping"></i> Sellers</a></li>
						<li class="float-right"><a class="nav-link"
							href="panel-page-users-create.html"><i
								class="icon icon-plus-circle"></i> Add New User</a></li>
					</ul>
				</div>
			</div>
		</header>

		<form action="<c:url value='/admin/user/list'/>" id="formSubmit" method="get">
			<div class="container-fluid animatedParent animateOnce">
				<div class="tab-content my-3" id="v-pills-tabContent">
					<div class="tab-pane animated fadeInUpShort show active"
						id="v-pills-all" role="tabpanel" aria-labelledby="v-pills-all-tab">
						<div class="row my-3">
							<div class="col-md-12">
								<div class="card r-0 shadow">
									<div class="table-responsive">
										<table class="table table-striped table-hover my-user-list-table r-0">
											<thead>
												<tr class="no-b my-user-list">
													<th>NAME</th>
													<th>BIRTHDAY</th>
													<th>GENDER</th>
													<th>ADDRESS</th>
													<th>PHONE</th>
													<th>STATUS</th>
													<th>ROLE</th>
													<th></th>
												</tr>
											</thead>

											<tbody>
												<c:forEach var="item" items="${model.listResult}">
													<tr>
														<td>
															<div class="avatar avatar-md mr-3 mt-1 float-left">
																<span
																	class="avatar-letter avatar-letter-a  avatar-md circle"></span>
															</div>
															<div>
																<div>
																	<strong>${item.name}</strong>
																</div>
																<small> ${item.email}</small>
															</div>
														</td>

														<td>${item.birthday}</td>
														<td>${item.gender ? 'Nam' : 'Nữ'}</td>
														<td>${item.address}</td>

														<td>${item.phoneNumber}</td>
														<td>
															<c:if test="${item.status == 1}">
																<span class="icon icon-circle s-12  mr-2 text-success"></span>
																Active
															</c:if>
															<c:if test="${item.status == 0}">
																<span class="icon icon-circle s-12  mr-2 text-danger"></span>
																Suspended
															</c:if>
														</td>
														<td>
															<c:if test="${item.role == 'ADMIN'}">
																<span class="r-3 badge badge-warning">${item.role}</span>
															</c:if>
															<c:if test="${item.role == 'EMPLOYEE'}">
																<span class="r-3 badge badge-success">${item.role}</span>
															</c:if>
														</td>
														<td><a href="panel-page-profile.html"><i
																class="icon-eye mr-3"></i></a> <a
															href="panel-page-profile.html"><i class="icon-pencil"></i></a>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<nav aria-label="Page navigation">
							<ul class="pagination" id="pagination"></ul>
							<input type="hidden" value="" id="page" name="page"/>
							<input type="hidden" value="" id="limit" name="limit"/>	
						</nav>
					</div>
				</div>
			</div>
		</form>

		<!--Add New Message Fab Button-->
		<a href="panel-page-users-create.html"
			class="btn-fab btn-fab-md fab-right fab-right-bottom-fixed shadow btn-primary"><i
			class="icon-add"></i></a>
	</div>

	<script type="text/javascript">
		var totalPages = ${model.totalPage};
		var currentPage = ${model.page};
		$(function() {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages : totalPages,
				visiblePages : 10,
				startPage: currentPage,
				onPageClick : function(event, page) { // page là trang tiếp theo
					if (currentPage != page) {
	            		$('#limit').val(6);
						$('#page').val(page);
						$('#formSubmit').submit();
					}
				}
			});
		});
	</script>
</body>
</html>