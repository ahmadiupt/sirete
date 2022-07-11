
<main>
	<div class="container-fluid">
		<h1 class="mt-4"></h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a href="<?php echo site_url('admin/penduduk') ?>">Penduduk</a></li>
			<li class="breadcrumb-item active"><?php echo $title ?></li>
		</ol>
		<div class="card mb-4">
			<div class="card-body">
			<form action="<?php echo site_url('admin/penduduk/save') ?>" method="post"  >
			<div class="mb-3">
				<label for="nik">NIK <code>*</code></label>
				<input class="form-control" type="text" name="nik" placeholder="Nomor Induk Kependudukan" required />				
			</div>
			<div class="mb-3">
				<label for="name">Nama Penduduk <code>*</code></label>
				<input class="form-control <?php echo form_error('name') ? 'is-invalid':'' ?>"
					type="text" name="name" placeholder="Nama Penduduk" required />
				<div class="invalid-feedback">
					<?php echo form_error('name') ?>
				</div>
			</div>	
			<div class="row">
				<div class="col mb-4">
					<label for="phone">Phone <code>*</code></label>
					<input class="form-control" type="text" name="phone" placeholder="No Telepon" required />				
				</div>
				<div class="col mb-4">
					<label for="email">Email <code>*</code></label>
					<input class="form-control" type="text" name="email" placeholder="Email" required/>				
				</div>
				<div class="col mb-4">
					<label for="birth">Tanggal Lahir <code>*</code></label>
					<input class="form-control" type="date" name="birth" placeholder="Tanggal Lahir" required/>				
				</div>
			</div>		
			<div class="row mb">
				<div class="col mb-6">
					<label for="gender">Jenis Kelamin <code>*</code></label>
						<select class="form-select" id="gender" name="gender" required>
						<option selected>Choose...</option>
						<option value="laki-laki">Laki-laki</option>
						<option value="perempuan">Perempuan</option>
						</select>					
				</div>
				<div class="col mb-6">
				<label for="profesi">Pekerjaan <code>*</code></label>
				<input class="form-control" type="text" name="profesi" placeholder="Pekerjaan" required/>				
			</div>
			</div>
			<div class="mb-3">
				<label for="address">Alamat <code>*</code></label>
				<input class="form-control" type="text" name="address" placeholder="Alamat" required/>				
			</div>	
			<div class="row mb">
			<div class="col mb-4">
					<label for="home_number">No Rumah <code>*</code></label>
					<input class="form-control" type="text" name="home_number" placeholder="No Rumah" required />				
				</div>
				<div class="col mb-4">
					<label for="kawin">Status Kawin <code>*</code></label>
					<select class="form-select" id="kawin" name="kawin" required>
					<option selected>Choose...</option>
					<option value="kawin">Kawin</option>
					<option value="belum kawin">Belum Kawin</option>
					</select>				
				</div>
				<div class="col mb-4">
					<label for="agama">Agama <code>*</code></label>
					<select class="form-select" id="agama" name="agama" required>
					<option selected>Choose...</option>
					<option value="islam">Islam</option>
					<option value="kristen">Kristen</option>
					<option value="hindu">Hindu</option>
					<option value="buddha">Buddha</option>
					</select>			
				</div>
			</div>
			
			<button class="btn btn-primary" type="submit"><i class="fas fa-plus"></i> Tambah Data Penduduk</button>
		</form>
				
			</div>
		</div>
		<div style="height: 100vh"></div>
	</div>
</main>
