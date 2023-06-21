

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

<!-- WELCOME-->
<section class="welcome p-t-10">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="title-4">Welcome back 
                    <span><?php echo e(Auth::user()->name); ?>!</span>
                </h1>
                <hr class="line-seprate">
            </div>
        </div>
    </div>
</section>
<!-- END WELCOME-->
<!-- END STATISTIC CHART-->

<!-- DATA TABLE-->
<section class="p-t-20">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="title-5 m-b-35">data table</h3>
                <div class="table-data__tool">
                    <div class="table-data__tool-right">
                        <?php if(Auth::user()->status == 'INACTIVE'): ?>
                            <a href="<?php echo e(route('dashboard.ppdb.create')); ?>">
                            <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                            <i class="zmdi zmdi-plus"></i>add item</button></a>
                        <?php endif; ?>
                    </div>
                </div>
                <div class="table-responsive table-responsive-data2">
                    <table class="table table-data2">
                        <thead>
                            <tr>
                                <th>
                                    <label class="au-checkbox">
                                        <input type="checkbox">
                                        <span class="au-checkmark"></span>
                                    </label>
                                </th>
                                <th>NISN</th>
                                <th>Nama</th>
                                <th>Jenis Kelamin</th>
                                <th>Agama</th>
                                <th>Status</th>
                                <th>Berkas Upload</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $__currentLoopData = $ppdbs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ppdb): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td><?php echo e($loop->iteration); ?></td>
                                    <td><?php echo e($ppdb->nisn); ?></td>
                                    <td><?php echo e($ppdb->name); ?></td>
                                    <td><?php echo e($ppdb->gender); ?></td>
                                    <td><?php echo e($ppdb->religion); ?></td>
                                    <td><?php echo e($ppdb->status); ?></td>
                                    <td>
                                        <a href="<?php echo e(route('dashboard.ppdb.pgallery.index', $ppdb->id)); ?>">
                                            <button class="item" data-toggle="tooltip" data-placement="top" title="Berkas">
                                                <i class="zmdi zmdi-more"></i>
                                            </button></a>
                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END DATA TABLE-->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.siswa', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\Al-Hidayah\Documents\fina\sd-sukajadi\resources\views/home.blade.php ENDPATH**/ ?>