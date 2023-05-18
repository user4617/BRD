<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@page
import="com.dao.entity.CustomerTemp"%> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form"%> <%@ taglib prefix="sec"
uri="http://www.springframework.org/security/tags" %>

<html>
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Customer list</title>
		<style>
			* {
				font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande",
					"Lucida Sans", Arial, sans-serif;
				box-sizing: border-box;
			}

			body {
				background-color: rgb(41, 42, 41);
				padding: 0px;
				margin: 0px;
			}

			.h-full {
				height: 100vh;
			}

			.w-100 {
				width: 100%;
			}

			.w-full {
				width: 100vw;
			}

			.w-auto {
				width: auto;
			}

			.d-flex {
				display: flex;
			}

			.flex-col {
				flex-direction: column;
			}
			.col-gap-2 {
				column-gap: 2rem;
			}
			.row-gap-2 {
				row-gap: 2rem;
			}

			.justify-center {
				justify-content: center;
			}
			.justify-end {
				justify-content: flex-end;
			}
			.justify-space-between {
				justify-content: space-between;
			}

			.align-item-center {
				align-items: center;
			}

			.color-white {
				color: white;
			}

			.overflow-auto {
				overflow: auto;
			}

			.m-2 {
				margin: 2rem;
			}

			.p-0 {
				padding: 0;
			}
			.p-1 {
				padding: 1rem;
			}
			.p-2 {
				padding: 2rem;
			}

			.br-2 {
				border-radius: 8px;
				-webkit-border-radius: 8px;
				-moz-border-radius: 8px;
				-ms-border-radius: 8px;
				-o-border-radius: 8px;
			}

			.border-1 {
				border: 1px solid gray;
			}
			.bg {
				background-color: rgba(72, 73, 72, 0.675);
			}

			.btn {
				font-size: larger;
				padding: 4px 8px;
				color: #000;
			}

			.btn-same {
				width: 100px;
			}

			/* ------------------------------- */

			.myTable {
				border-collapse: collapse;
			}

			.myTable thead {
				background-color: rgb(175, 175, 229);
			}
			.myTable th {
				padding: 8px 8px;
			}
			.myTable td {
				padding: 8px 8px;
				font-weight: 400;
				color: white;
			}

			/* ----------- */
			.error {
				color: #ef1313;
				font-style: italic;
			}

			/*  */

			input {
				font-size: 1rem;
				padding: 8px 10px;
			}
		</style>
	</head>

	<body>
		<div class="d-flex p-1 justify-space-between">
			<button class="btn">
				<a href="addCustomer" style="text-decoration: none; color: inherit"
					>Add new customer</a
				>
			</button>
		</div>

		<div class="w-full p-1">
			<div class="overflow-auto">
				<table border="1" class="myTable">
					<thead>
						<tr>
							<th>Customer Id</th>
							<th>Customer Code</th>
							<th>Name</th>
							<th>Address1</th>
							<th>Address2</th>
							<th>PinCode</th>
							<th>Email</th>
							<th>ContactNumber</th>
							<th>PrimaryContactPerson</th>
							<th>RecordStatus</th>
							<th>CreatedBy</th>
							<th>CreatedDate</th>
							<th>ModifiedBy</th>
							<th>ModifiedDate</th>
							<th>AuthorizedBy</th>
							<th>AuthorizedDate</th>
							<th>Update</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${customers}" var="customer">
							<tr>
								<td>${customer.cid}</td>
								<td>${customer.customerCode}</td>
								<td>${customer.customerName}</td>
								<td>${customer.address1}</td>
								<td>${customer.address2}</td>
								<td>${customer.pinCode}</td>
								<td>${customer.email}</td>
								<td>${customer.contactNumber}</td>
								<td>${customer.primaryContactPerson}</td>
								<td>${customer.recordStatus}</td>
								<td>${customer.createdBy}</td>
								<td>${customer.createDate}</td>
								<td>${customer.modifiedDate}</td>
								<td>${customer.modifiedBy}</td>
								<td>${customer.authorizedDate}</td>
								<td>${customer.authorizedBy}</td>
								<td>
									<a href="updateCustomer?cid=${customer.cid}"
										><button class="btn">Update</button></a
									>
								</td>
								<td>
									<a href="deleteCustomer?cid=${customer.cid}"
										><button class="btn">Delete</button></a
									>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</body>
</html>
