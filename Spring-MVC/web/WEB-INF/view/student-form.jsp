<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
    <title>Student Registration</title>
</head>

<body>

<form:form action="processForm" modelAttribute="student">

    <!first call getter>
    First name: <form:input path="firstName"/>

    <br>

    Last name: <form:input path="lastName"/>

    <br>
    
    Country:

    <!--
    <form:select path="country">
        <form:option value="Ukraine" label="Ukraine"/>
        <form:option value="Canada" label="Canada"/>
        <form:option value="UK" label="UK"/>
        <form:option value="Germany" label="Germany"/>
    </form:select>
    -->


    <form:select path="country">
        <form:options items="${student.countryOptions}"/>
    </form:select>

    <br>

    Favourite language:
    
    Java <form:radiobutton path="favouriteLanguage" value="Java"/>
    C++ <form:radiobutton path="favouriteLanguage" value="C++"/>
    C <form:radiobutton path="favouriteLanguage" value="C"/>
    C# <form:radiobutton path="favouriteLanguage" value="C#"/>

    <br>

    What OS do you prefer?

    Windows <form:checkbox path="favouriteOS" value="Windows"/>
    Linux <form:checkbox path="favouriteOS" value="Linux"/>
    MacOS <form:checkbox path="favouriteOS" value="MacOS"/>
    FreeBSD <form:checkbox path="favouriteOS" value="FreeBSD"/>

    <br>

    <!call setters>
    <input type="submit" value="Sign up">

</form:form>

</body>

</html>
