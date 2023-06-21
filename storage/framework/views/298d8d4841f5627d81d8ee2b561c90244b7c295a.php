<!-- HEADER DESKTOP-->
<header class="header-desktop3 d-none d-lg-block">
    <div class="section__content section__content--p35">
        <div class="header3-wrap">
            <div class="header__logo">
                <a href="<?php echo e(route('index')); ?>">
                    <img src="<?php echo e(url('/landingPage/assets/img/mi.png')); ?>" width="174px" height="50px" alt="CoolAdmin" />
                </a>
            </div>
            <div class="header__navbar">
                <ul class="list-unstyled">
                    <?php if(Auth::user()->roles == 'ADMIN'): ?>
                        <li class="dropdown">
                            <a href="<?php echo e(route('dashboard.admindashboard.index')); ?>" class="">DASHBOARD</a>
                        </li>  
                    <?php endif; ?>
                    <li class="dropdown">
                        <a href="<?php echo e(route('dashboard.ppdb.index')); ?>" class="">Home</a>
                    </li> 
                    <?php if(Auth::user()->status == 'ACTIVE'): ?>
                        <li class="dropdown">
                            <a href="<?php echo e(route('dashboard.saving.index')); ?>" class="">Tabungan</a>
                        </li> 
                        <li class="dropdown">
                            <a href="<?php echo e(route('dashboard.payment.index')); ?>" class="">Pembayaran</a>
                        </li>
                    <?php endif; ?> 
                </ul>
            </div>
            <div class="header__tool">
                <div class="account-wrap">
                    <div class="account-item account-item--style2 clearfix js-item-menu">
                        <div class="image">
                            <img src="<?php echo e(url('/admin/images/icon/avatar-01.jpg')); ?>" alt="<?php echo e(Auth::user()->name); ?>" />
                        </div>
                        <div class="content">
                            <a class="js-acc-btn" href="#"><?php echo e(Auth::user()->name); ?></a>
                        </div>
                        <div class="account-dropdown js-dropdown">
                            <div class="info clearfix">
                                <div class="image">
                                    <a href="#">
                                        <img src="<?php echo e(url('/admin/images/icon/avatar-01.jpg')); ?>" alt="<?php echo e(Auth::user()->name); ?>" />
                                    </a>
                                </div>
                                <div class="content">
                                    <h5 class="name">
                                        <a href="#"><?php echo e(Auth::user()->name); ?></a>
                                    </h5>
                                    <span class="email"><?php echo e(Auth::user()->email); ?></span>
                                </div>
                            </div>
                            <div class="account-dropdown__body">
                                <div class="account-dropdown__item">
                                    <a href="<?php echo e(route('profile.show')); ?>">
                                        <i class="zmdi zmdi-account"></i>Account</a>
                                </div>
                            </div>
                            <div class="account-dropdown__footer">
                                <a class="dropdown-item" href="<?php echo e(route('logout')); ?>" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                    <?php echo e(__('Logout')); ?>

                                </a>
                                <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" class="d-none">
                                    <?php echo csrf_field(); ?>
                                </form>
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
                    <img src="<?php echo e(url('/landingPage/assets/img/mi.png')); ?>" width="174px" height="50px" alt="CoolAdmin" />
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
                <?php if(Auth::user()->roles == 'ADMIN'): ?>
                    <li class="dropdown">
                        <a href="<?php echo e(route('dashboard.admindashboard.index')); ?>" class="">DASHBOARD</a>
                    </li>  
                <?php endif; ?> 
            </ul>
        </div>
    </nav>
</header>
<div class="sub-header-mobile-2 d-block d-lg-none">
    <div class="header__tool">
        <div class="account-wrap">
            <div class="account-item account-item--style2 clearfix js-item-menu">
                <div class="image">
                    <img src="<?php echo e(url('/admin/images/icon/avatar-01.jpg')); ?>" alt="<?php echo e(Auth::user()->name); ?>" />
                </div>
                <div class="content">
                    <a class="js-acc-btn" href="#"><?php echo e(Auth::user()->name); ?></a>
                </div>
                <div class="account-dropdown js-dropdown">
                    <div class="info clearfix">
                        <div class="image">
                            <a href="#">
                                <img src="<?php echo e(url('/admin/images/icon/avatar-01.jpg')); ?>" alt="<?php echo e(Auth::user()->name); ?>" />
                            </a>
                        </div>
                        <div class="content">
                            <h5 class="name">
                                <a href="#"><?php echo e(Auth::user()->name); ?></a>
                            </h5>
                            <span class="email"><?php echo e(Auth::user()->email); ?></span>
                        </div>
                    </div>
                    <div class="account-dropdown__body">
                        <div class="account-dropdown__item">
                            <a href="<?php echo e(route('profile.show')); ?>">
                                <i class="zmdi zmdi-account"></i>Account</a>
                        </div>
                    </div>
                    <div class="account-dropdown__footer">
                        <a class="dropdown-item" href="<?php echo e(route('logout')); ?>" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                            <?php echo e(__('Logout')); ?>

                        </a>
                        <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" class="d-none">
                            <?php echo csrf_field(); ?>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END HEADER MOBILE --><?php /**PATH C:\Users\Al-Hidayah\Documents\fina\sd-sukajadi\resources\views/components/siswa/navbar.blade.php ENDPATH**/ ?>