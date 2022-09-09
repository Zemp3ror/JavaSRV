<%--
  Created by IntelliJ IDEA.
  User: Stepan
  Date: 02.09.2022
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Portfolio</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
            crossorigin="anonymous"
    />
    <!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
    <link rel="stylesheet" href="css\style.css" />
</head>
<body>
<nav class="navbar fixed-top navbar-expand-lg bg-gradient bg-light">
    <!-- style="background-color:forestgreen ;" -->
    <div class="container">
        <a href="" class="navbar-brand"></a>
        <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarContent"
                aria-controls="navbarContent"
                aria-expanded="false"
        >
            <span class="navbar-toggler-icon"></span>
        </button>
        <div
                class="collapse navbar-collapse justify-content-between"
                id="navbarContent"
        >
            <ul class="navbar-nav mr-auto mb-2">
                <li class="nav-item">
                    <a href="" class="nav-link mt-1">Home</a>
                </li>
                <li class="nav-item">
                    <a href="" class="nav-link mt-1">About me</a>
                </li>
                <li class="nav-item">
                    <a href="" class="nav-link mt-1">Work experience</a>
                </li>
                <li class="nav-item">
                    <a href="" class="nav-link mt-1">My Projects</a>
                </li>
            </ul>
            <div class="d-flex">
                <button
                        class="btn btn-outline-success ml-3"
                        data-bs-toggle="modal"
                        data-bs-target="#exampleModal"
                >
                    Sign in
                </button>
                <button class="btn btn-outline-danger ms-3">Sign out</button>
            </div>
        </div>
    </div>
</nav>
<!-- Modal -->
<div
        class="modal fade"
        id="exampleModal"
        tabindex="1"
        aria-bs-labelledby="exampleModalLabel"
        aria-hidden="true"
>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">
                    Login to your account
                </h5>
                <button
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-bs-label="close"
                ></button>
            </div>
            <div class="modal-body">
        <form action="<%=request.getContextPath()%>/login" method="post">
            <table>
                <div class="row mb-3">
                    <label for="inputEmail" class="col-sm-2 col-form-label"
                    >Email</label
                    >
                    <div class="col-sm-10">
                        <input
                                type="text"
                                class="form-control"
                                name="username"
                                id="inputEmail"
                        />
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="inputPassword" class="col-sm-2 col-form-label"
                    >Password</label
                    >
                    <div class="col-sm-10">
                        <input
                                type="text"
                                class="form-control"
                                name="password"
                                id="inputPassword"
                        />
                    </div>
                </div>
            </table>
            <div class="modal-footer mt-2">
                <input type="submit" class="btn btn-secondary" value="Sign in"/>
                <button class="btn btn-secondary" data-bs-dismiss="modal">
                    Close
                </button>
            </div>
        </form>
            </div>

        </div>
    </div>
</div>
<%--!Modal--%>
<main>
    <div class="continer d-flex">
        <img
                class="w-100"
                src="https://4brain.ru/blog/wp-content/uploads/2021/05/professija-programmist-koder-ili-sozdatel.png"
                alt="Img2"
        />
    </div>
</main>
<footer class="pt-4 my-md-5 pt-md-5 border-top text-center">
    <div class="row">
        <div class="col-md-2">
            <img class="w-25" src="https://cdn.icon-icons.com/icons2/2201/PNG/512/telegram_logo_circle_icon_134012.png" alt="">
            <a href="https://web.telegram.org/" class="link-secondary">Telegram</a>
        </div>
        <div class="col-md-2">
            <img class="w-25" src="https://cdn-icons-png.flaticon.com/512/145/145813.png" alt="">
            <a href="https://vk.com/" class="link-secondary">VK</a>
        </div>
        <div class="col-md-2">
            <img class="w-25" src="https://cdn-icons-png.flaticon.com/512/2111/2111612.png" alt="">
            <a href="https://github.com/" class="link-secondary">GitHub</a>
        </div>
        <div class="col-md-2">
            <img class="w-25" src="https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/144_Gitlab_logo_logos-512.png" alt="">
            <a href="https://about.gitlab.com/" class="link-secondary">GitLab</a>
        </div>
        <div class="col-md-2">
            <img class="w-25" src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/HH_Train_%281967-1972%29.svg/800px-HH_Train_%281967-1972%29.svg.png" alt="">
            <a href="https://hh.ru/" class="link-secondary">HH</a>
        </div>
    </div>
</footer>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"
></script>
<script
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
        integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
        crossorigin="anonymous"
></script>

<script type="text/javascript" src="js/main.js"></script>
</body>
</html>