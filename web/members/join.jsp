<jsp:include page="../includeFiles/header.jsp"/>
<body>
<a href="/home">
    <div class="jumbotron" style="border-radius: 10px; margin-left: 10px; margin-right:10px;">
        <h2 style="text-align: center">Marvel Defenders Fan Site</h2>
    </div>
</a>


<div class="container">
    <jsp:include page="../includeFiles/navBar.jsp"/>
    <div class="col-sm-2"></div>
    <div class="col-sm-8">
        <div class="jumbotron">
            <h2 style="text-align: center">Join</h2>

        </div>
        <form action="./joinAction.jsp" method="post">
            <div class="form-group">
                <input type="text" name="memberID" class="form-control" placeholder="Enter ID">
            </div>
            <div class="form-group">
                <input type="password" name="memberPassword" class="form-control" placeholder="Enter Password">
            </div>
            <div class="form-group">
                <input type="password" name="memberPassword2" class="form-control" placeholder="Repeat Password">
            </div>
            <div class="form-group">
                <input type="email" name="memberEmail" class="form-control" placeholder="Enter Email">
            </div>
            <button type="submit" class="btn btn-primary">Join</button>
        </form>
    </div>
    <div class="col-sm-2"></div>
</div>

</body>
</html>
