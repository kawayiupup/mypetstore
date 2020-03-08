<%--
  Created by IntelliJ IDEA.
  User: 汪梦婷
  Date: 2019/10/27
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/IncludeTop.jsp"%>

<h2>My Orders</h2>

<table>
    <tr>
        <th>Order ID</th>
        <th>Date</th>
        <th>Total Price</th>
    </tr>

    <c:forEach var="order" items="${sessionScope.orderList}">
        <tr>
            <td>
                <a href="viewOrder?orderId=${order.orderId}">${order.orderId}</a>
            </td>
            <td>
                <fmt:formatDate value="${order.orderDate}" pattern="yyyy/MM/dd hh:mm:ss" />
            </td>
            <td>
                <fmt:formatNumber value="${order.totalPrice}" pattern="$#,##0.00" />
            </td>
        </tr>
    </c:forEach>
</table>

<%@ include file="../common/IncludeBottom.jsp"%>