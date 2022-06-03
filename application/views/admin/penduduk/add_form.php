
<main>
	<div class="container-fluid">
		<h1 class="mt-4"></h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a href="<?php echo site_url('admin/kegiatan') ?>">Kegiatan</a></li>
			<li class="breadcrumb-item active"><?php echo $title ?></li>
		</ol>
		<div class="card mb-4">
			<div class="card-body">
			<form action="<?php echo site_url('admin/kegiatan/save') ?>" method="post"  >
			<div class="mb-3">
				<label for="name">Kegiatan <code>*</code></label>
				<input class="form-control <?php echo form_error('name') ? 'is-invalid':'' ?>"
					type="text" name="name" placeholder="Nama Kegiatan" required />
				<div class="invalid-feedback">
					<?php echo form_error('name') ?>
				</div>
			</div>			
			<div class="mb-3">
				<label for="alamat">Alamat <code>*</code></label>
				<input class="form-control" type="text" name="alamat" placeholder="Alamat Kegiatan" required />				
			</div>
			<div class="mb-3">
				<label for="kecamatan">Kecamatan <code>*</code></label>
				<input class="form-control" type="text" name="kecamatan" placeholder="Kecamatan" required/>				
			</div>
			<div class="mb-3">
				<label for="kabupaten">Kabupaten <code>*</code></label>
				<input class="form-control" type="text" name="kabupaten" placeholder="Kabupaten" required/>				
			</div>	
			<div class="mb-3">
				<label for="provinsi">Provinsi <code>*</code></label>
				<input class="form-control" type="text" name="provinsi" placeholder="Provinsi" required/>				
			</div>	
			<div class="mb-3">
				<label for="tanggal">Tanggal Kegiatan <code>*</code></label>	
				<input class="form-control" type="date" name="tanggal" placeholder="Tanggal Kegiatan" required/>				
			</div>	
			<button class="btn btn-primary" type="submit"><i class="fas fa-plus"></i> Tambah Kegiatan</button>
		</form>

				
			</div>
		</div>
		<div style="height: 100vh"></div>
	</div>
</main>
