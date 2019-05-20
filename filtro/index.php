<?php 

include 'header.php'; 
include 'controller/Filtro.php'; 

?>

<body>
	<div class="container mt-5">

		<div class="row">

			<div class="col-md-3 col-6">
				<form class="form-group" action="index?search=nome" method="post">
					<div class=input-group>
						<input type="text" name="nome" placeholder="Digite o nome" class="form-control">
						<div class="input-group-append">
							<button type="submit"><i class="fas fa-search"></i></button>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-3 col-6">
				<form class="form-group" action="index?search=idade" method="post">
					<div class=input-group>
						<input type="text" name="idade" placeholder="Digite a idade" class="form-control">
						<div class="input-group-append">
							<button type="submit"><i class="fas fa-search"></i></button>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-3 col-6">
				<form class="form-group" action="index?search=interesse" method="post">
					<div class=input-group>
						<input type="text" name="interesse" placeholder="Digite o interesse" class="form-control">
						<div class="input-group-append">
							<button type="submit"><i class="fas fa-search"></i></button>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-3 col-6">
				<form class="form-group" action="index?search=estado" method="post">
					<div class=input-group>
						<input type="text" name="estado" placeholder="Digite o estado" class="form-control">
						<div class="input-group-append">
							<button type="submit"><i class="fas fa-search"></i></button>
						</div>
					</div>
				</form>
			</div>

		</div>

		<?php if(!isset($_GET['search'])) { ?>

			<table class="table table-striped">
				<thead>
					<tr>
						<th>Nome</th>
						<th>Idade</th>
						<th>Interesse</th>
						<th>E-mail</th>
						<th>Estado</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					include 'conexao.php';
					$query="SELECT * FROM tb_alunos LIMIT 20";
					$stmt = $conexao->query($query);
					$alunos = $stmt->FetchAll(PDO::FETCH_ASSOC);
					foreach($alunos as $aluno) {
						?>
						<tr>
							<td><?php echo $aluno['nome'] ?></td>
							<td><?php echo $aluno['idade'] ?></td>
							<td><?php echo $aluno['interesse'] ?></td>
							<td><?php echo $aluno['email'] ?></td>
							<td><?php echo $aluno['estado'] ?></td>
						</tr>
						<?php
					}
					?>
				</tbody>
			</table>

		<?php } ?>

		<?php 

		if(isset($_GET['search']) && $_GET['search'] == 'nome') {

			echo '<div class="row">';
			echo '<div class="col-12">';
			echo $filtro->filtroNome();
			echo '</div>';
			echo '</div>';

		} 

		if(isset($_GET['search']) && $_GET['search'] == 'idade') { 

			echo '<div class="row">';
			echo '<div class="col-12">';
			echo $filtro->filtroIdade();
			echo '</div>';
			echo '</div>';

		} 

		if(isset($_GET['search']) && $_GET['search'] == 'interesse') { 

			echo '<div class="row">';
			echo '<div class="col-12">';
			echo $filtro->filtroInteresse();
			echo '</div>';
			echo '</div>';

		} 

		if(isset($_GET['search']) && $_GET['search'] == 'estado') { 

			echo '<div class="row">';
			echo '<div class="col-12">';
			echo $filtro->filtroEstado();
			echo '</div>';
			echo '</div>';

		} 

		?>

	</div>
</body>

<?php include 'footer.php'; ?>