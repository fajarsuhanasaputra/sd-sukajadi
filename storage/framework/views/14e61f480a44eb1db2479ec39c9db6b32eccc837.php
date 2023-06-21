<?php if($message = Session::get('success')): ?>
<div class="sufee-alert alert with-close alert-primary alert-dismissible fade show au-alert--70per">
    <span class="badge badge-pill badge-primary">Success</span>
    <?php echo e($message); ?>

    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<?php endif; ?>
<?php if($errors->any()): ?>
    <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="sufee-alert alert with-close alert-danger alert-dismissible fade show au-alert--70per">
            <span class="badge badge-pill badge-danger">Error</span>
            <?php echo e($error); ?>

            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div><br>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php /**PATH C:\Users\Al-Hidayah\Documents\fina\sd-sukajadi\resources\views/components/admin/alert.blade.php ENDPATH**/ ?>