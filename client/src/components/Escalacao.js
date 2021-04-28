import React from 'react';
import '../App.css';

function Escalacao(props) {

	const escalacao = props.escalacao;
	const formacao = props.formacao;

	return (

		<div>
			<div className="header m-5">
				<h1>Escalação</h1>
			</div>

			<div className="form-inline">
				<label>
					Formação
					<select id="selectFormacao" className="custom-select m-2" onChange={props.setEsquema}>
						{formacao &&
							formacao.map((f, index) => (
								<option key={"formacao" + f.id} value={f.nome}>{f.nome}</option>
							))}
					</select>
				</label>
			</div>


			<div>
				<table className="table my-3 mx-auto">
					<thead>
						<tr>
							<th scope="col">Posição</th>
							<th scope="col">Time</th>
							<th scope="col">Jogadora</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>
						{escalacao.map((jogadora, index) => (
							<JogadoraRow key={index} jogadora={jogadora} action={props.action} />
						))}
					</tbody>
				</table>
			</div>
		</div>

	);
}
export default Escalacao

function JogadoraRow(props) {

	var jogadora = props.jogadora

	return (
		<tr key={"escalacao" + props.index}>
			<td>{props.jogadora.posicao}</td>
			<td>
				<img src={require("../imagens/escudos/" + props.jogadora.equipe.escudo).default} alt="" title={props.jogadora.equipe.nome} width="65" height="65" />
			</td>
			<td>{props.jogadora.nome}</td>
			<td>
				<div className={jogadora.add ? "btn btn-success" : "btn btn-danger"} onClick={() => props.action(props.jogadora)}>+</div>
			</td>
		</tr>
	);
}
