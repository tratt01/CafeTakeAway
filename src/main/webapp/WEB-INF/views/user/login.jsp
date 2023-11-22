<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>


<div>
        <div class="user-login blog">
            <div class="main-content">
                <div class="wrap-banner">

                    <!-- breadcrumb -->
                    <nav class="breadcrumb-bg">
                        <div class="container no-index">
                            <div class="breadcrumb">
                                <ol>
                                    <li>
                                        <a href="#">
                                            <span>Trang chủ</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span>Đăng nhập</span>
                                        </a>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </nav>

                </div>

                <!-- main -->
                <div id="wrapper-site">
                    <div id="content-wrapper" class="full-width">
                        <div id="main">
                            <div class="container">
                                
                                <h1 class="text-center title-page">Đăng nhập</h1>
                                <div class="login-form">
                                    
                                    
                                    <form:form id="customer-form" action="/CafeTakeAway/login" method="post" modelAttribute="user">
                                        <div>
                                            <div class="form-group no-gutters">
                                                <form:input class="form-control" path="username" type="text"
                                                    placeholder=" Input Username:"/>
                                            </div>
                                            <div class="form-group no-gutters">
                                                <div class="input-group js-parent-focus">
                                                    <form:input class="form-control js-child-focus js-visible-password"
                                                        path="password" type="password" placeholder="Mật khẩu"/>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="clearfix">
                                            <div class="text-center no-gutters">
                                                <input class="btn btn-primary" data-link-action="sign-in" type="submit"
                                                    value="Đăng nhập">
                                                <a href="/site/register" class="btn btn-default">
                                                    Đăng ký ?
                                                </a>
                                            </div>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>