<div class="karyawans form">
<?php echo $this->Form->create('Karyawan'); ?>
	<fieldset>
		<legend><?php echo __('Add Karyawan'); ?></legend>
	<?php
		echo $this->Form->input('nama');
		echo $this->Form->input('alamat');
		echo $this->Form->input('nohp');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Karyawans'), array('action' => 'index')); ?></li>
	</ul>
</div>
