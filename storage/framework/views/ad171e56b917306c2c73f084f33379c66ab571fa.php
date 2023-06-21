<!-- HEADER DESKTOP-->
        <header class="header-desktop4">
            <div class="container">
                <div class="header4-wrap">
                    <div class="header__logo">
                        <a href="<?php echo e(route('index')); ?>">
                            <img src="<?php echo e(url('/landingPage/assets/img/mi.png')); ?>" width="174px" height="50px" alt="Misutas" />
                        </a>
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
        <!-- END HEADER DESKTOP --><?php /**PATH C:\Users\Al-Hidayah\Documents\fina\sd-sukajadi\resources\views/components/admin/navbar.blade.php ENDPATH**/ ?>