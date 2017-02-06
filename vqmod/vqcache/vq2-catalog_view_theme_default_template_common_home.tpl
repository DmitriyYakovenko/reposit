<?php echo $header; ?>

        <?php global $registry; $vie_module_groups = $registry->get('vie_module_groups'); if (!empty($vie_module_groups['vie_ht'])) { ?>
        <?php echo implode('', $vie_module_groups['vie_ht']); ?>
        <?php } ?>      
      
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>