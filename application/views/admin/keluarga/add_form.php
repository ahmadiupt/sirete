
<main>
	<div class="container-fluid">
		<h1 class="mt-4"></h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a href="<?php echo site_url('admin/keluarga') ?>">Keluarga</a></li>
			<li class="breadcrumb-item active"><?php echo $title ?></li>
		</ol>
		<div class="card mb-4">
			<div class="card-header"> 
				<div class="card-tools pull-right">
					<button class="btn btn-default btn-sm" type="button" data-widget="collapse"><i class="fa fa-minus"></i></button>
				</div>
			</div>
			<div class="card-body">
			<form action="<?php echo site_url('admin/keluarga/save') ?>" method="post"  >
			<div class="mb-3">
				<label for="name">No Kartu Keluarga <code>*</code></label>
				<input class="form-control <?php echo form_error('name') ? 'is-invalid':'' ?>"
					type="text" name="no_kk" placeholder="No Kartu Keluarga" required />
				<div class="invalid-feedback">
					<?php echo form_error('no_kk') ?>
				</div>
			</div>			
			<div class="mb-3">
				<label for="alamat">Kecamatan <code>*</code></label>
				<input class="form-control" type="text" name="kecamatan" placeholder="Kecamatan" required />				
			</div>
			<div class="mb-3">
				<label for="kecamatan">Kabupaten <code>*</code></label>
				<input class="form-control" type="text" name="kabupaten" placeholder="Kabupaten" required/>				
			</div>
			<div class="mb-3">
				<label for="kabupaten">Provinsi <code>*</code></label>
				<input class="form-control" type="text" name="provinsi" placeholder="Provinsi" required/>				
			</div>	
			<div class="mb-3">
				<label for="provinsi">Alamat Lengkap <code>*</code></label>
				<!-- <input class="form-control" type="text" name="address" placeholder="Alamat Lengkap" required/>	 -->
				<textarea name="address" class="form-control" id="address" cols="20" rows="5"></textarea>			
			</div>	
			<button class="btn btn-primary" type="submit"><i class="fas fa-plus"></i> Tambah Data Keluarga</button>
		</form>

				
			</div>
		</div>
		<div style="height: 100vh"></div>
	</div>
</main>
