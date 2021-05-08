import React from "react";
import '../App.css';

function ListaJogadoras(props) {

	const jogadoras = props.jogadoras;

	return (
		<tbody>
			{jogadoras &&
				jogadoras.map((jogadora, index) => (
					<tr key={"jogadora" + jogadora.id}>
						<td>{jogadora.posicao}</td>
						<td>
							<img src={require("../imagens/escudos/" + jogadora.equipe.escudo).default} alt="" title={jogadora.equipe.nome} width="65" height="65" />
						</td>
						<td>{jogadora.nome}</td>
						<td>
							<div className={jogadora.add ? "btn btn-success" : "btn btn-danger"} onClick={() => props.action(jogadora)}>+</div>
						</td>
					</tr>
				))}
		</tbody>

	);
}
export default ListaJogadoras

