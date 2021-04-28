import React from "react";
import '../App.css';

function ListaJogadoras (props) {

		const jogadoras = props.jogadoras;

		return (
			<tbody>
				{jogadoras &&
					jogadoras.map((jogadora, index) => (
						<JogadoraRow key={jogadora.id} jogadora={jogadora} action={props.action} />
					))}
			</tbody>

		);
}
export default ListaJogadoras

function JogadoraRow(props) {

	var jogadora = props.jogadora

	return (
		<tr key={"jogadora" + props.jogadora.key}>
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