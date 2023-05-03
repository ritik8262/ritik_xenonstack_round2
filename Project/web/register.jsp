
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.108.0">
        <title>Employee Management Sign up</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/">

        <!-- Favicons -->
        <link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
        <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
        <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
        <link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
        <link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
        <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
        <meta name="theme-color" content="#712cf9">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/sign-in.css" rel="stylesheet">
        <link href="css/signup.css" rel="stylesheet" >

    </head>
    <body class="text-center">

        <main class="form-signin w-100 m-auto">
            <form action="Register" method="post">
                <img class="mb-4" src="logo.png" alt="" width="150" height="75" >
                <h1 class="h3 mb-3 fw-normal">Please Fill the Details</h1>

                <% if (request.getAttribute("ErrorMsg") != null) {%>
                <div class="alert alert-danger" role="alert">
                    <%=request.getAttribute("ErrorMsg")%>
                </div>
                <% } %>

                <div class="form-floating">
                    <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="emailAddress" required="required">
                    <label for="floatingInput">Email address</label>
                </div>
             
                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingfirstName" placeholder="Enter the First Name" name="firstName" required="required">
                    <label for="floatingfirstName">Frist Name</label>
                </div>
                <div class="form-floating">
                    <input type="text" class="form-control" id="floatinglastName" placeholder="Enter the Last Name" name="lastName" required="required">
                    <label for="floatinglastName">Last Name</label>
                </div>

                <button class="w-100 btn btn-lg btn-primary" type="submit">Sign Up</button>

                <p class="mt-5 mb-3 text-muted">&copy; 2023-2024 by Ashmita</p>
            </form>
        </main>

    </body>
</html>
