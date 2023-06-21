

<?php $__env->startSection('content'); ?>
<!-- Start Blog
============================================= -->
<div class="blog-area full-blog right-sidebar full-blog default-padding">
    <div class="container">
        <div class="blog-items">
            <div class="row">
                <div class="blog-content col-lg-8 col-md">
                    <div class="blog-item-box">
                        <!-- Single Item -->
                        <?php $__currentLoopData = $blogs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $blog): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>                  
                            <div class="single-item">
                                <div class="item wow fadeInUp">
                                    <div class="thumb">
                                        <a href="#">
                                            <img src="<?php echo e($blog->galleries()->exists() ? Storage::url($blog->galleries->first()->url) : 'data:image/gif;base64,R0lGODlhAQABAIAAAMLCwgAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=='); ?>" alt="Thumb">
                                        </a>
                                    </div>
                                    <div class="info">
                                        <div class="tags">
                                            <a href="#">Berita terkini</a>
                                            <a href="#">di Tasikmalaya</a>
                                        </div>
                                        <div class="meta">
                                            <ul>
                                                <li><i class="fas fa-calendar-alt"></i> <?php echo e(\Carbon\Carbon::parse($blog->created_at)->translatedFormat('l, d F Y')); ?></li>
                                                <li>By <a href="#">Admin</a></li>
                                            </ul>
                                        </div>
                                        <h4>
                                            <a href="#"><?php echo e($blog->title); ?></a>
                                        </h4>
                                        <span>
                                            <p>
                                                <?php echo Str::limit($blog->body, 50); ?>

                                            </p>
                                        </span>
                                        <a class="btn circle btn-gradient btn-sm" href="<?php echo e(url('blog/details', $blog->slug)); ?>">Read More <i class="fas fa-long-arrow-alt-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <!-- End Single Item -->
                    </div>
                    
                    <!-- Pagination -->
                    <div class="row">
                        <div class="col-md-9 pagi-area text-center">
                            <nav aria-label="navigation">
                                <ul class="pagination">
                                    <li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-double-left"></i></a></li>
                                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-double-right"></i></a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <!-- Start Sidebar -->
                <div class="sidebar col-lg-4 col-md">
                    <aside>
                        <div class="sidebar-item recent-post">
                            <div class="title">
                                <h4>Recent Post</h4>
                            </div>
                            <ul>
                                <?php $__currentLoopData = $recents; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $recent): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li>
                                        <div class="thumb">
                                            <a href="#">
                                                <img src="<?php echo e($recent->galleries()->exists() ? Storage::url($recent->galleries->first()->url) : 'data:image/gif;base64,R0lGODlhAQABAIAAAMLCwgAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=='); ?>" alt="Thumb">
                                </a>
                                        </div>
                                        <div class="info">
                                            <a href="#"><?php echo e($recent->title); ?></a>
                                            <div class="meta-title">
                                                <span class="post-date"><i class="fas fa-clock"></i> <?php echo e(\Carbon\Carbon::parse($recent->created_at)->translatedFormat('l, d F Y')); ?></span>
                                            </div>
                                        </div>
                                    </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                
                            </ul>
                        </div>
                        <div class="sidebar-item category">
                            <div class="title">
                                <h4>category list</h4>
                            </div>
                            <div class="sidebar-info">
                                <ul>
                                    <li>
                                        <a href="#">Nasional <span>69</span></a>
                                    </li>
                                    <li>
                                        <a href="#">Akademis <span>25</span></a>
                                    </li>
                                    <li>
                                        <a href="#">Olahraga <span>16</span></a>
                                    </li>
                                    <li>
                                        <a href="#">Kegiatan <span>37</span></a>
                                    </li>
                                    <li>
                                        <a href="#">Sekolah <span>9</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="sidebar-item gallery">
                            <div class="title">
                                <h4>Gallery</h4>
                            </div>
                            <div class="sidebar-info">
                                <ul>
                                    <li>
                                        <a href="#">
                                            <img src="/landingPage/assets/img/10.png" alt="thumb">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="/landingPage/assets/img/11.png" alt="thumb">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="/landingPage/assets/img/12.png" alt="thumb">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="/landingPage/assets/img/13.png" alt="thumb">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="/landingPage/assets/img/14.png" alt="thumb">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="/landingPage/assets/img/halaman.jpeg" alt="thumb">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="sidebar-item archives">
                            <div class="title">
                                <h4>Archives</h4>
                            </div>
                            <div class="sidebar-info">
                                <ul>
                                    <li><a href="#">Aug 2020</a></li>
                                    <li><a href="#">Sept 2020</a></li>
                                    <li><a href="#">Nov 2020</a></li>
                                    <li><a href="#">Dec 2020</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="sidebar-item social-sidebar">
                            <div class="title">
                                <h4>follow us</h4>
                            </div>
                            <div class="sidebar-info">
                                <ul>
                                    <li class="facebook">
                                        <a href="#">
                                            <i class="fab fa-facebook-f"></i>
                                        </a>
                                    </li>
                                    <li class="twitter">
                                        <a href="#">
                                            <i class="fab fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li class="pinterest">
                                        <a href="#">
                                            <i class="fab fa-pinterest"></i>
                                        </a>
                                    </li>
                                    <li class="g-plus">
                                        <a href="#">
                                            <i class="fab fa-google-plus-g"></i>
                                        </a>
                                    </li>
                                    <li class="linkedin">
                                        <a href="#">
                                            <i class="fab fa-linkedin-in"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="sidebar-item tags">
                            <div class="title">
                                <h4>tags</h4>
                            </div>
                            <div class="sidebar-info">
                                <ul>
                                    <li><a href="#">Fashion</a>
                                    </li>
                                    <li><a href="#">Education</a>
                                    </li>
                                    <li><a href="#">nation</a>
                                    </li>
                                    <li><a href="#">study</a>
                                    </li>
                                    <li><a href="#">health</a>
                                    </li>
                                    <li><a href="#">food</a>
                                    </li>
                                    <li><a href="#">travel</a>
                                    </li>
                                    <li><a href="#">science</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </aside>
                </div>
                <!-- End Start Sidebar -->
            </div>
        </div>
    </div>
</div>
<!-- End Blog -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.landingpage', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\Al-Hidayah\Documents\fina\sd-sukajadi\resources\views/pages/landingpage/blog/index.blade.php ENDPATH**/ ?>