

<?php $__env->startSection('content'); ?>
<h1>Data </h1>
<!-- END STATISTIC-->
<div class="row">
    <div class="col-md-12">
        <!-- DATA TABLE -->
        <h3 class="title-5 m-b-35">data siswa</h3>
        <div class="table-data__tool">
            <div class="table-data__tool-left">
            </div>
            <div class="table-data__tool-right">
                <a href="<?php echo e(route('dashboard.student.create')); ?>"><button class="au-btn au-btn-icon au-btn--green au-btn--small">
                    <i class="zmdi zmdi-plus"></i>add item</button></a>
                
            </div>
        </div>
        <div class="table-responsive table-responsive-data2">
            <table class="table table-data2">
                <thead>
                    <tr>
                        <th>NISN</th>
                        <th>Nama</th>
                        <th>Jenis Kelamin</th>
                        <th>Status</th>
                        <th></th>
                    </tr>
                </thead>
                <?php $__currentLoopData = $ppdbs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ppdb): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><?php echo e($ppdb->nisn); ?></td>
                        <td><?php echo e($ppdb->name); ?></td>
                        <td><?php echo e($ppdb->gender); ?></td>
                        <td><?php echo e($ppdb->status); ?></td>
                        <td>
                            <a href="<?php echo e(route('dashboard.ppdb.pgallery.index', $ppdb->id)); ?>">
                                <button class="item" data-toggle="tooltip" data-placement="top" title="Berkas">
                                    <i class="zmdi zmdi-more"></i>
                                </button></a>
                        </td>
                    </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </table>
        </div>
        <!-- END DATA TABLE -->
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\Al-Hidayah\Documents\fina\sd-sukajadi\resources\views/pages/dashboard/admin/ppdb/index.blade.php ENDPATH**/ ?>