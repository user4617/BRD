<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Customer Master</title>

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
    <div class="d-flex flex-col align-item-center p-2 justify-center h-full">
        <h1 class="color-white">Update Customer Form(Master)</h1>
        <div class="bg p-2 border-1 br-2 color-white">
            <form:form action="updateCustomerMaster" method="post" modelAttribute="customerBean">
                <input type="hidden" name="cid" value="${customerBean.cid}">
                <div class="d-flex justify-space-between w-100 align-item-center col-gap-2">
                    <label for="customerCode" class="form-label">Customer Code: </label>
                    <input type="text" id="customerCode" name="customerCode" value="${customerBean.customerCode}"
                        readonly>
                </div>
                </br>

                <div class="d-flex justify-space-between w-100 align-item-center col-gap-2">
                    <label for="customerCode" class="form-label">Name: </label>
                    <input type="text" id="customerName" name="customerName" value="${customerBean.customerName}">
                </div>
                </br>

                <div class="d-flex justify-space-between w-100 align-item-center col-gap-2">
                    <label for="address1" class="form-label">Address1: </label>
                    <input type="text" id="address1" name="address1" value="${customerBean.address1}">
                </div>

                <br>
                <div class="d-flex justify-space-between w-100 align-item-center col-gap-2">
                    <label for="address2" class="form-label">Address2: </label>
                    <input type="text" id="address2" name="address2" value="${customerBean.address2}">
                </div>

                <br>
                <div class="d-flex justify-space-between w-100 align-item-center col-gap-2">
                    <label for="email" class="form-label">Email: </label>
                    <input type="text" id="email" name="email" value="${customerBean.email}">
                </div>

                <br>
                <div class="d-flex justify-space-between w-100 align-item-center col-gap-2">
                    <label for="contactNumber" class="form-label">Contact Number: </label>
                    <input type="text" id="contactNumber" name="contactNumber" value="${customerBean.contactNumber}">
                </div>

                <br>
                <div class="d-flex justify-space-between w-100 align-item-center col-gap-2">
                    <label for="primaryContactPerson" class="form-label">Primary Contact Person: </label>
                    <input type="text" id="primaryContactPerson" name="primaryContactPerson"
                        value="${customerBean.primaryContactPerson}" />
                </div>
                <br>

                <div class="d-flex justify-end">
                    <button type="Submit" class="btn">Update</button>
                </div>

            </form:form>
        </div>
    </div>

</body>
</html>