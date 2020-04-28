<div class="karyawans view">
<h2><?php echo __('Karyawan'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($karyawan['Karyawan']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Nama'); ?></dt>
		<dd>
			<?php echo h($karyawan['Karyawan']['nama']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Alamat'); ?></dt>
		<dd>
			<?php echo h($karyawan['Karyawan']['alamat']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Nohp'); ?></dt>
		<dd>
			<?php echo h($karyawan['Karyawan']['nohp']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Karyawan'), array('action' => 'edit', $karyawan['Karyawan']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Karyawan'), array('action' => 'delete', $karyawan['Karyawan']['id']), array('confirm' => __('Are you sure you want to delete # %s?', $karyawan['Karyawan']['id']))); ?> </li>
		<li><?php echo $this->Html->link(__('List Karyawans'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Karyawan'), array('action' => 'add')); ?> </li>
	</ul>
</div>
