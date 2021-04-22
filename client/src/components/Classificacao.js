import React, { Component } from "react";
import '../App.css';
import TimesDataService from "../services/times.service";

export default class Classificacao extends Component {
	constructor(props) {
		super(props);
		this.retrieveClassificacao = this.retrieveClassificacao.bind(this);

		this.state = {
			classificao: [],
		};
	}

	componentDidMount() {
		this.retrieveClassificacao();
	}


	retrieveClassificacao() {
		TimesDataService.getClassificacao()
			.then(response => {
				this.setState({
					classificacao: response.data
				});
			})
			.catch(e => {
				console.log(e);
			});
	}

	render() {
		const { classificacao } = this.state;

		return (

			<div className="m-5">
				<div className="header m-5">
					<h1>Classificação</h1>
				</div>

				<table className="table table-dark my-3 mx-auto">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Time</th>
							<th scope="col">Técnico</th>
							<th scope="col">Pontuação</th>
						</tr>
					</thead>
					<tbody>
						{classificacao &&
							classificacao.map((classificacao, index) => (
								<tr key={classificacao.id}>
									<th>{index+1}</th>
									<td>{classificacao.nome}</td>
									<td>{classificacao.tecnico}</td>
									<td>{classificacao.pontuacao}</td>
								</tr>
							))}
					</tbody>
				</table>
			</div>

		);
	}
}