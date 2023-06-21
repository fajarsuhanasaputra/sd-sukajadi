

<?php $__env->startSection('content'); ?>
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
                <h2>Need help? <strong>Let's ask your questions</strong></h2><br>
                <form action="<?php echo e(route('dashboard.ppdb.store')); ?>" class="w-full" method="POST" enctype="multipart/form-data">
                    <?php echo csrf_field(); ?>
                    <div class="form-group row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <input class="form-control" value="<?php echo e(old('nisn')); ?>" name="nisn" placeholder="NISN" type="text">
                                <span class="alert-error"></span>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <input class="form-control" value="<?php echo e(old('name')); ?>" name="name" placeholder="NAMA" type="text">
                                <span class="alert-error"></span>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <input class="form-control" value="<?php echo e(old('birthdate')); ?>" name="birthdate" placeholder="Tanggal Lahir" type="date">
                                <span class="alert-error"></span>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <input class="form-control" value="<?php echo e(old('gender')); ?>" name="gender" placeholder="Jenis Kelamin" type="text">
                                <span class="alert-error"></span>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <input class="form-control" value="<?php echo e(old('religion')); ?>" name="religion" placeholder="Agama" type="text">
                                <span class="alert-error"></span>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <input class="form-control" value="<?php echo e(Auth::user()->id); ?>" name="user_id" placeholder="User" type="text" readonly>
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
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.siswa', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\Al-Hidayah\Documents\fina\sd-sukajadi\resources\views/create.blade.php ENDPATH**/ ?>