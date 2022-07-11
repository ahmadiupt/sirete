 
<main>
	<div class="container-fluid">
		<h1 class="mt-4"></h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a href="<?php echo site_url('admin/imam') ?>">List Imam</a></li>
			<li class="breadcrumb-item active"><?php echo $title ?></li>
		</ol>
		<div class="card mb-4">
			<div class="card-header">
				<a href="<?php echo site_url('admin/imam/add') ?>"><i class="fas fa-plus"></i> Add New</a>
			</div>
			<?php if ($this->session->flashdata('success')): ?>
			<div class="alert alert-success" role="alert">
				<?php echo $this->session->flashdata('success'); ?>
			</div>
			<?php endif; ?>
			<div class="card-body"> 
				<div class="table-responsive">
			<table class="table table-striped table-bordered table-hover" id="tabelkelas" width="100%" cellspacing="0">
				<thead>
					<tr>
						<th>No.</th>
						<th>Name</th>
						<th>Alamat</th>
						<th>Kecamatan</th>
						<th>Kabupaten</th>
						<th>Provinsi</th>
						<th>Tanggal Pelaksanaan</th>																			
						<th>Action</th>
					</tr>
				</thead>
				<tbody>								
					<?php
					$no =1;
						foreach ($imam as $user) {
					echo "<tr>
							<td>$no</td>
							<td>$user->name</td>
							<td>$user->address</td>
							<td>$user->kecamatan</td>		
							<td>$user->kabupaten</td>
							<td>$user->provinsi</td>
							<td>$user->tanggal</td>																					
							<td>
							<div>
							<a href=".base_url('admin/imam/getedit/' . $user->id)." class='btn btn-sm btn-info'><i class='fas fa-edit'></i> Edit</a>
							<a href=".base_url('admin/imam/delete/' . $user->id)." class='btn btn-sm btn-danger'
							onclick='return confirm(\"Ingin mengapus data user ini?\");'><i class='fas fa-trash'></i> Hapus</a>
							</div>
							</td>
					</tr>";
					$no++;
					} ?>

				</tbody>
			</table>
		</div>
				
			</div>
		</div>
		<div style="height: 100vh"></div>
	</div>
</main>

