

<?php $__env->startSection('content'); ?>
<h1>Data </h1>
<div class="row">
    <div class="col-md-12">
        <!-- DATA TABLE -->
        <h3 class="title-5 m-b-35">data gallery</h3>
        <div class="table-data__tool">
            <div class="table-data__tool-left">
            </div>
            <div class="table-data__tool-right">
                <a href="<?php echo e(route('dashboard.blog.gallery.create', $blog->id)); ?>"><button class="au-btn au-btn-icon au-btn--green au-btn--small">
                    <i class="zmdi zmdi-plus"></i>add item</button></a>
                
            </div>
        </div>
        <div class="table-responsive table-responsive-data2">
            <table class="table table-data2">
                <thead>
                    <tr>
                        <th>Photo</th>
                        <th>Featured</th>
                        <th></th>
                    </tr>
                </thead>
                <?php $__currentLoopData = $blogGalleries; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $blogGallery): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><img src="<?php echo e((Storage::url($blogGallery->url))); ?>" alt="" title="" height="100px" width="100px" /></td>
                        <td><?php echo e($blogGallery->is_featured ? 'Yes' : 'No'); ?></td>
                        <td>
                            <div class="table-data-feature">
                                <form class="inline" action= <?php echo e(route('dashboard.gallery.destroy', $blogGallery->id)); ?> method="POST">
                                    <?php echo csrf_field(); ?>
                                    <?php echo method_field('delete'); ?>
                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                            <i class="zmdi zmdi-delete"></i>
                                        </button>
                                </form>
                                <button class="item" data-toggle="tooltip" data-placement="top" title="Download">
                                    <a href="<?php echo e(Storage::url($blogGallery->url)); ?>" download><i class="zmdi zmdi-more"></i></a>
                                </button>
                            </div>
                        </td>
                    </tr>
                    <tr class="spacer"></tr>
                </tbody> 
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </table>
        </div>
        <!-- END DATA TABLE -->
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\Al-Hidayah\Documents\fina\sd-sukajadi\resources\views/pages/dashboard/admin/gallery/index.blade.php ENDPATH**/ ?>