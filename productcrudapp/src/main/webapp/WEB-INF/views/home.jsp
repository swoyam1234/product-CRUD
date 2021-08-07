<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>
<body>

	<div class="container mt-3">

		<div class="row">

			<div class="col-md-12">

				<h1 class="text-center mb-2">Welcome to Product App</h1>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${products}" var="p">
							<tr>
								<th scope="row">${p.id }</th>
								<td>${p.name }</td>
								<td>${p.description }</td>
								<td>&#8377;${p.price }</td>
								<td>
								<a href="delete/${p.id }"><i class="far fa-trash-alt text-danger" style="font-size: 20px;"></i></a>
								<a href="update/${p.id }"><i class="fas fa-pen-nib text-primary" style="font-size: 20px"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container text-center">
					<a href="addproduct" class="btn btn-outline-success">Add
						product</a>
				</div>


			</div>


		</div>


	</div>
</body>
</html>