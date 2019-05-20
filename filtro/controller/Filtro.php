<?php

include 'conexao.php';

class Filtro
{
	private $con = null;

	public function __set($attribute, $value) {
		$this->$attribute = $value;
	}

	public function __get($attribute) {
		return $this->$attribute;
	}

	public function filtroNome() {

		$con = $this->__get('con');

		$pesquisa = $_POST['nome'];

		$query="SELECT * FROM tb_alunos WHERE nome LIKE '%$pesquisa%'";

		$stmt = $con->query($query);
		$alunosNome = $stmt->FetchAll(PDO::FETCH_ASSOC);

		$html = '';

		$html .= '<table class="table table-striped" style="margin-bottom: 400px">';
		$html .= '<thead>';
		$html .= '<tr>';
		$html .= '<th>Nome</th>';
		$html .= '<th>Idade</th>';
		$html .= '<th>Interesse</th>';
		$html .= '<th>E-mail</th>';
		$html .= '<th>Estado</th>';
		$html .= '</tr>';
		$html .= '</thead>';

		$html .= '<tbody>';

		foreach($alunosNome as $alunoNome) {

			$nome = $alunoNome['nome'];
			$idade = $alunoNome['idade'];
			$interesse = $alunoNome['interesse'];
			$email = $alunoNome['email'];
			$estado = $alunoNome['estado'];

			$html .= '<tr>';
			$html .= '<td>'.$nome.'</td>';
			$html .= '<td>'.$idade.'</td>';
			$html .= '<td>'.$interesse.'</td>';
			$html .= '<td>'.$email.'</td>';
			$html .= '<td>'.$estado.'</td>';
			$html .= '</tr>';
		}

		$html .= '</tbody>';
		$html .= '</table>';

		return $html;

	}

	public function filtroIdade() {

		$con = $this->__get('con');

		$pesquisa = $_POST['idade'];

		$query="SELECT * FROM tb_alunos WHERE idade LIKE '%$pesquisa%'";

		$stmt = $con->query($query);
		$alunosNome = $stmt->FetchAll(PDO::FETCH_ASSOC);

		$html = '';

		$html .= '<table class="table table-striped" style="margin-bottom: 400px">';
		$html .= '<thead>';
		$html .= '<tr>';
		$html .= '<th>Nome</th>';
		$html .= '<th>Idade</th>';
		$html .= '<th>Interesse</th>';
		$html .= '<th>E-mail</th>';
		$html .= '<th>Estado</th>';
		$html .= '</tr>';
		$html .= '</thead>';
		$html .= '<tbody>';

		foreach($alunosNome as $alunoNome) {

			$nome = $alunoNome['nome'];
			$idade = $alunoNome['idade'];
			$interesse = $alunoNome['interesse'];
			$email = $alunoNome['email'];
			$estado = $alunoNome['estado'];

			$html .= '<tr>';
			$html .= '<td>'.$nome.'</td>';
			$html .= '<td>'.$idade.'</td>';
			$html .= '<td>'.$interesse.'</td>';
			$html .= '<td>'.$email.'</td>';
			$html .= '<td>'.$estado.'</td>';
			$html .= '</tr>';
		}

		$html .= '</tbody>';
		$html .= '</table>';

		return $html;
	}

	public function filtroInteresse() {

		$con = $this->__get('con');

		$pesquisa = $_POST['interesse'];

		$query="SELECT * FROM tb_alunos WHERE interesse LIKE '%$pesquisa%'";

		$stmt = $con->query($query);
		$alunosNome = $stmt->FetchAll(PDO::FETCH_ASSOC);

		$html = '';

		$html .= '<table class="table table-striped">';
		$html .= '<thead>';
		$html .= '<tr>';
		$html .= '<th>Nome</th>';
		$html .= '<th>Idade</th>';
		$html .= '<th>Interesse</th>';
		$html .= '<th>E-mail</th>';
		$html .= '<th>Estado</th>';
		$html .= '</tr>';
		$html .= '</thead>';
		$html .= '<tbody>';

		foreach($alunosNome as $alunoNome) {

			$nome = $alunoNome['nome'];
			$idade = $alunoNome['idade'];
			$interesse = $alunoNome['interesse'];
			$email = $alunoNome['email'];
			$estado = $alunoNome['estado'];

			$html .= '<tr>';
			$html .= '<td>'.$nome.'</td>';
			$html .= '<td>'.$idade.'</td>';
			$html .= '<td>'.$interesse.'</td>';
			$html .= '<td>'.$email.'</td>';
			$html .= '<td>'.$estado.'</td>';
			$html .= '</tr>';
		}

		$html .= '</tbody>';
		$html .= '</table>';

		return $html;
		
	}

	public function filtroEstado() {

		$con = $this->__get('con');

		$pesquisa = $_POST['estado'];

		$query="SELECT * FROM tb_alunos WHERE estado LIKE '%$pesquisa%'";

		$stmt = $con->query($query);
		$alunosNome = $stmt->FetchAll(PDO::FETCH_ASSOC);

		$html = '';

		$html .= '<table class="table table-striped" style="margin-bottom: 400px">';
		$html .= '<thead>';
		$html .= '<tr>';
		$html .= '<th>Nome</th>';
		$html .= '<th>Idade</th>';
		$html .= '<th>Interesse</th>';
		$html .= '<th>E-mail</th>';
		$html .= '<th>Estado</th>';
		$html .= '</tr>';
		$html .= '</thead>';
		$html .= '<tbody>';

		foreach($alunosNome as $alunoNome) {

			$nome = $alunoNome['nome'];
			$idade = $alunoNome['idade'];
			$interesse = $alunoNome['interesse'];
			$email = $alunoNome['email'];
			$estado = $alunoNome['estado'];

			$html .= '<tr>';
			$html .= '<td>'.$nome.'</td>';
			$html .= '<td>'.$idade.'</td>';
			$html .= '<td>'.$interesse.'</td>';
			$html .= '<td>'.$email.'</td>';
			$html .= '<td>'.$estado.'</td>';
			$html .= '</tr>';
		}

		$html .= '</tbody>';
		$html .= '</table>';

		return $html;
	}
}

$filtro = new Filtro();

$filtro->__set('con', $conexao);