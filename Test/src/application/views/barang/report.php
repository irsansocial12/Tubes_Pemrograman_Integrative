<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?= $title ?></title>
	<link href="<?= base_url('sb-admin') ?>/css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
	<div class="row">
		<div class="col text-center">
			<h3 class="h3 text-dark"><?= $title ?></h3>
		</div>
	</div>
	<hr>
	<div class="row">
		<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
			<thead>
				<tr>
					<td><b>No</td>
					<td><b>Kode Barang</td>
					<td><b>Nama Barang</td>
					<td><b>Stok</td>
				</tr>
			</thead>
			<tbody>
				<?php 
				$no=1;
				foreach ($all_barang as $barang): ?>
					<tr>
						<td><?= $no++ ?></td>
						<td><?= $barang->kode_barang ?></td>
						<td><?= $barang->nama_barang ?></td>
						<td><?= $barang->stok ?> <?= strtoupper($barang->satuan) ?></td>
					
					</tr>
				<?php endforeach ?>
			</tbody>
		</table>
	</div>
</body>
</html>