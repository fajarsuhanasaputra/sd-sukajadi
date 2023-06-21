<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Dashboard 3</title>

    <!-- Fontfaces CSS-->
    <link href="{{ url('/admin/css/font-face.css') }}" rel="stylesheet" media="all">
    <link href="{{ url('/admin/vendor/font-awesome-4.7/css/font-awesome.min.css') }}" rel="stylesheet" media="all">
    <link href="{{ url('/admin/vendor/font-awesome-5/css/fontawesome-all.min.css') }}" rel="stylesheet" media="all">
    <link href="{{ url('/admin/vendor/mdi-font/css/material-design-iconic-font.min.css') }}" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="{{ url('/admin/vendor/bootstrap-4.1/bootstrap.min.css') }}" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="{{ url('/admin/vendor/animsition/animsition.min.css') }}" rel="stylesheet" media="all">
    <link href="{{ url('/admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css') }}" rel="stylesheet" media="all">
    <link href="{{ url('/admin/vendor/wow/animate.css') }}" rel="stylesheet" media="all">
    <link href="{{ url('/admin/vendor/css-hamburgers/hamburgers.min.css') }}" rel="stylesheet" media="all">
    <link href="{{ url('/admin/vendor/slick/slick.css') }}" rel="stylesheet" media="all">
    <link href="{{ url('/admin/vendor/select2/select2.min.css') }}" rel="stylesheet" media="all">
    <link href="{{ url('/admin/vendor/perfect-scrollbar/perfect-scrollbar.css') }}" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="{{ url('/admin/css/theme.css') }}" rel="stylesheet" media="all">

</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER DESKTOP-->
        <header class="header-desktop3 d-none d-lg-block">
            <div class="section__content section__content--p35">
                <div class="header3-wrap">
                    <div class="header__logo">
                        <a href="{{ route('index') }}">
                            <img src="{{ url('/landingPage/assets/img/mi.png') }}" width="174px" height="50px" alt="CoolAdmin" />
                        </a>
                    </div>
                    <div class="header__navbar">
                        <ul class="list-unstyled">
                            @if (Auth::user()->roles == 'ADMIN')
                            <li class="dropdown">
                                <a href="{{ route('dashboard.admindashboard.index') }}" class="">DASHBOARD</a>
                            </li>  
                        @endif
                            
                        </ul>
                    </div>
                    <div class="header__tool">
                        <div class="account-wrap">
                            <div class="account-item account-item--style2 clearfix js-item-menu">
                                <div class="image">
                                    <img src="{{ url('/admin/images/icon/avatar-01.jpg') }}" alt="{{ $users->name }}" />
                                </div>
                                <div class="content">
                                    <a class="js-acc-btn" href="#">{{ $users->name }}</a>
                                </div>
                                <div class="account-dropdown js-dropdown">
                                    <div class="info clearfix">
                                        <div class="image">
                                            <a href="#">
                                                <img src="{{ url('/admin/images/icon/avatar-01.jpg') }}" alt="{{ $users->name }}" />
                                            </a>
                                        </div>
                                        <div class="content">
                                            <h5 class="name">
                                                <a href="#">{{ $users->name }}</a>
                                            </h5>
                                            <span class="email">{{ $users->email }}</span>
                                        </div>
                                    </div>
                                    <div class="account-dropdown__footer">
                                        <a href="#">
                                            <i class="zmdi zmdi-power"></i>Logout</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- END HEADER DESKTOP-->

        <!-- HEADER MOBILE-->
        <header class="header-mobile header-mobile-2 d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.html">
                            <img src="{{ url('/landingPage/assets/img/mi.png') }}" width="174px" height="50px" alt="CoolAdmin" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="index.html">Dashboard 1</a>
                                </li>
                                <li>
                                    <a href="index2.html">Dashboard 2</a>
                                </li>
                                <li>
                                    <a href="index3.html">Dashboard 3</a>
                                </li>
                                <li>
                                    <a href="index4.html">Dashboard 4</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="chart.html">
                                <i class="fas fa-chart-bar"></i>Landing Page</a>
                        </li>
                        
                    </ul>
                </div>
            </nav>
        </header>
        <div class="sub-header-mobile-2 d-block d-lg-none">
            <div class="header__tool">
                <div class="account-wrap">
                    <div class="account-item account-item--style2 clearfix js-item-menu">
                        <div class="image">
                            <img src="{{ url('/admin/images/icon/avatar-01.jpg') }}" alt="{{ $users->name }}" />
                        </div>
                        <div class="content">
                            <a class="js-acc-btn" href="#">{{ $users->name }}</a>
                        </div>
                        <div class="account-dropdown js-dropdown">
                            <div class="info clearfix">
                                <div class="image">
                                    <a href="#">
                                        <img src="{{ url('/admin/images/icon/avatar-01.jpg') }}" alt="{{ $users->name }}" />
                                    </a>
                                </div>
                                <div class="content">
                                    <h5 class="name">
                                        <a href="#">{{ $users->name }}</a>
                                    </h5>
                                    <span class="email">{{ $users->email }}</span>
                                </div>
                            </div>
                            <div class="account-dropdown__footer">
                                <a href="#">
                                    <i class="zmdi zmdi-power"></i>Logout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END HEADER MOBILE -->

        <!-- PAGE CONTENT-->
        <div class="page-content--bgf7">
            <!-- BREADCRUMB-->
            <section class="au-breadcrumb2">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="au-breadcrumb-content">
                                <div class="au-breadcrumb-left">
                                    <span class="au-breadcrumb-span">You are here:</span>
                                    <ul class="list-unstyled list-inline au-breadcrumb__list">
                                        <li class="list-inline-item active">
                                            <a href="#">Home</a>
                                        </li>
                                        <li class="list-inline-item seprate">
                                            <span>/</span>
                                        </li>
                                        <li class="list-inline-item">Dashboard</li>
                                    </ul>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END BREADCRUMB-->
            <div id="contact" class="contact-us-area default-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 wow fadeInLeft contact-form">
                            <h2>Need help? <strong>Let's ask your questions</strong></h2>
                            <form action="{{ route('dashboard.ppdb.store') }}" class="w-full" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input class="form-control" value="{{ old('nisn') }}" name="nisn" placeholder="NISN" type="text">
                                            <span class="alert-error"></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input class="form-control" value="{{ old('name') }}" name="name" placeholder="NAMA" type="text">
                                            <span class="alert-error"></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input class="form-control" value="{{ old('birthdate') }}" name="birthdate" placeholder="Tanggal Lahir" type="date">
                                            <span class="alert-error"></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input class="form-control" value="{{ old('gender') }}" name="gender" placeholder="Jenis Kelamin" type="text">
                                            <span class="alert-error"></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input class="form-control" value="{{ old('religion') }}" name="religion" placeholder="Agama" type="text">
                                            <span class="alert-error"></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group"> 
                                            <input type="file" enctype="multipart/form-data" multiple name="files[]" accept="image/*" class="form form-control" placeholder="Photos" id="">
                                            <span class="alert-error"></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <button type="submit" class="btn btn-primary">
                                            Save Class
                                        </button>
                                    </div>
                                    <!-- Alert Message -->
                                    <div class="col-lg-12 alert-notification">
                                        <div id="message" class="alert-msg"></div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>  

            <!-- COPYRIGHT-->
            <section class="p-t-60 p-b-20">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright">
                                <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END COPYRIGHT-->
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="{{ url('/admin/vendor/jquery-3.2.1.min.js') }} "></script>
    <!-- Bootstrap JS-->
    <script src="{{ url('/admin/vendor/bootstrap-4.1/popper.min.js') }} "></script>
    <script src="{{ url('/admin/vendor/bootstrap-4.1/bootstrap.min.js') }} "></script>
    <!-- Vendor JS       -->
    <script src="{{ url('/admin/vendor/slick/slick.min.js') }} ">
    </script>
    <script src="{{ url('/admin/vendor/wow/wow.min.js') }} "></script>
    <script src="{{ url('/admin/vendor/animsition/animsition.min.js') }} "></script>
    <script src="{{ url('/admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js') }} ">
    </script>
    <script src="{{ url('/admin/vendor/counter-up/jquery.waypoints.min.js') }} "></script>
    <script src="{{ url('/admin/vendor/counter-up/jquery.counterup.min.js') }} ">
    </script>
    <script src="{{ url('/admin/vendor/circle-progress/circle-progress.min.js') }} "></script>
    <script src="{{ url('/admin/vendor/perfect-scrollbar/perfect-scrollbar.js') }} "></script>
    <script src="{{ url('/admin/vendor/chartjs/Chart.bundle.min.js') }} "></script>
    <script src="{{ url('/admin/vendor/select2/select2.min.js') }} ">
    </script>

    <!-- Main JS-->
    <script src="{{ url('/admin/js/main.js') }}"></script>
    <script>
        document.forms['myFirstForm'].addEventListener('submit', function (event) {
            // Do something with the form's data here
            this.style['display'] = 'none';
            event.preventDefault();/*w  w w.  j av  a2s.c  o  m*/
        });
    
      </script> 
</body>

</html>
<!-- end document-->
