<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
    <title>Customer confirmation</title>
</head>
<body>

The customer is confirmed: ${customer.firstName} ${customer.lastName}

<br><br>
    Free passes: ${customer.freePasses}
<br><br>
    Postal code: ${customer.postalCode}
<br><br>

<c:if test="${not empty customer.courseCode}">
    Course code: ${customer.courseCode}
</c:if>
<br><br>



</body>
</html>