import React, { Component } from 'react';
import '../App.css';
import FormacaoDataService from "../services/formacao.service";
import JogadorasDataService from "../services/jogadoras.service";
import EquipesDataService from "../services/equipes.service";
import ListaJogadoras from "./ListaJogadoras";
import Escalacao from "./Escalacao";

export default class PageEscalacao extends Component {
	constructor(props) {
		super(props);

		this.state = {
			formacao: [],
			escalacao: [],
			jogadoras: [],
			equipes: [],
			filtro: ["","",""],
			posicoesFormacao: [],
			posicoesEscalacao: [],
			jogadorasPorTime: [],
			maxJogadoras: 4,
		};
		this.setEsquema = this.setEsquema.bind(this);
		this.setFormacao = this.setFormacao.bind(this);
		this.addJogadora = this.addJogadora.bind(this);
		this.handleAction = this.handleAction.bind(this);
		this.setFiltro = this.setFiltro.bind(this);
		this.pesquisaFiltro = this.pesquisaFiltro.bind(this);
	}

	componentDidMount() {

		this.retrieveFormacao();
		this.retrieveJogadoras();
		this.retrieveEquipes();
	}
	retrieveJogadoras() {
		JogadorasDataService.getAll()
			.then(response => {

				var j = response.data;
				for (var i = 0; i < j.length; i++) {
					j[i].ativo = true;
					j[i].add = true;
				}

				this.setState({
					jogadoras: j
				});
			})
			.catch(e => {
				console.log(e);
			});
	}

	retrieveFormacao() {
		FormacaoDataService.getAll()
			.then(response => {
				this.setState({
					formacao: response.data
				}, () => {
					this.iniciaEsquema();
				});
			})
			.catch(e => {
				console.log(e);
			});
	}
	retrieveEquipes() {
		EquipesDataService.getAll()
			.then(response => {
				this.setState({
					equipes: response.data
				});
			})
			.catch(e => {
				console.log(e);
			});
	}

	iniciaEsquema() {

		var formacao = this.state.formacao[0];

		this.setState({
			posicoesFormacao: formacao,
			posicoesEscalacao: formacao,

		}, () => {
			this.setFormacao();
		});

	}

	setEsquema(e) {

		var formacao = this.state.formacao.find(x => x.nome === e.target.value);

		this.setState({
			posicoesFormacao: formacao,
			posicoesEscalacao: formacao,

		}, () => {
			this.setFormacao();
		});

	}

	setFormacao() {

		var novaformacao = [];
		var i = 0;
		var j = 0;

		novaformacao[i] = { posicao: "GOLEIRA" };
		i++;

		if (this.state.posicoesFormacao.num_lateral > 0) {
			novaformacao[i] = { posicao: "LATERAL" };
			i++;

			for (j = 0; j < this.state.posicoesFormacao.num_zagueira; j++) {
				novaformacao[i] = { posicao: "ZAGUEIRA" };
				i++;
			}

			novaformacao[i] = { posicao: "LATERAL" };
			i++;
		} else {
			for (j = 0; j < this.state.posicoesFormacao.num_zagueira; j++) {
				novaformacao[i] = { posicao: "ZAGUEIRA" };
				i++;
			}
		}

		for (j = 0; j < this.state.posicoesFormacao.num_meia; j++) {
			novaformacao[i] = { posicao: "MEIO CAMPO" };
			i++;
		}

		for (j = 0; j < this.state.posicoesFormacao.num_atacante; j++) {
			novaformacao[i] = { posicao: "ATACANTE" };
			i++;
		}

		var equipe = { escudo: "default.png", nome: "" };

		for (var k = 0; k < novaformacao.length; k++) {
			novaformacao[k] = { posicao: novaformacao[k].posicao, add: true, equipe: equipe };
		}

		this.setState({ escalacao: novaformacao });

	}

	handleAction(jogadora) {

		if (jogadora.id != null) {
			if (jogadora.add) {
				this.addJogadora(jogadora);
			} else {
				this.removeJogadora(jogadora);
			}
		}

	}

	addJogadora(jogadora) {

		var escalacao = this.state.escalacao;
		var adicionouNaEscalacao = false;

		for (var i = 0; i < escalacao.length; i++) {
			if (escalacao[i].posicao === jogadora.posicao && escalacao[i].id == null && this.validaJogadoraPorTime(jogadora)) {
				escalacao[i] = jogadora;
				escalacao[i].add = false;
				adicionouNaEscalacao = true;
				this.addJogadoraPorTime(jogadora);
				break;
			}
		}
		if (!adicionouNaEscalacao) {
			console.log("Não foi possivel escalar a : " + jogadora.nome);
		}

		this.setState({ escalacao: escalacao });
	}


	removeJogadora(jogadora) {

		var escalacao = this.state.escalacao;
		var jogadoras = this.state.jogadoras;
		var jogadorasPorTime = this.state.jogadorasPorTime;

		var indexEscala = escalacao.findIndex(x => x.id === jogadora.id);
		var indexJogadora = jogadoras.findIndex(x => x.id === jogadora.id);
		var indexJPT = jogadorasPorTime.findIndex(x => x.equipe === jogadora.equipe.nome);

		var equipe = { escudo: "default.png", nome: "" };

		escalacao[indexEscala] = { posicao: jogadora.posicao, add: true, equipe: equipe };
		jogadoras[indexJogadora].add = true;
		jogadorasPorTime[indexJPT].qtd = jogadorasPorTime[indexJPT].qtd - 1;

		this.setState({
			escalacao: escalacao
		});
	}

	addJogadoraPorTime(jogadora) {

		var JPT = this.state.jogadorasPorTime
		var index = JPT.findIndex(x => x.equipe === jogadora.equipe.nome);
		console.log("index: " + index);
		if (index === -1) {
			console.log("Index é null")
			JPT.push({ equipe: jogadora.equipe.nome, qtd: 1 })
		} else {
			JPT[index] = { equipe: jogadora.equipe.nome, qtd: JPT[index].qtd + 1 }
		}
		console.log(JPT)

		this.setState({
			jogadorasPorTime: JPT
		});
	}

	validaJogadoraPorTime(jogadora) {
		var JPT = this.state.jogadorasPorTime
		var index = JPT.findIndex(x => x.equipe === jogadora.equipe.nome);

		if (index === -1) {
			return true
		} else {

			if (JPT[index].qtd < this.state.maxJogadoras) {
				return true;
			} else {
				return false;
			}
		}

	}

	setFiltro(f, i) {
		var filtro = this.state.filtro;
		filtro[i] = f;
		this.setState({
			filtro: filtro
		})
	}

	pesquisaFiltro(rows) {
		var filtro = this.state.filtro;
		var result = rows.filter(row => 
			row.posicao.toLowerCase().indexOf(filtro[0]) > -1 &&
			row.equipe.nome.toLowerCase().indexOf(filtro[1]) > -1 &&
			row.nome.toLowerCase().indexOf(filtro[2]) > -1);
		return result;
	}

	render() {

		const { jogadoras } = this.state;
		const { escalacao } = this.state;
		const { formacao } = this.state;


		return (
			<div className="m-3">
				<Escalacao escalacao={escalacao} formacao={formacao} action={this.handleAction} setEsquema={this.setEsquema} />
				<div>
					<div className="header m-5">
						<h1>Lista de Jogadoras</h1>
					</div>
					<div>
						<table className="table my-3 ">
							<thead>
								<tr>
									<th scope="col">
										<div className="row">Posicao</div>
										<input className="row" type="text" onChange={(e) => this.setFiltro(e.target.value,0)}/>
									</th>
									<th scope="col">
										<div className="row">Time</div>
										<input className="row" type="text" onChange={(e) => this.setFiltro(e.target.value,1)}/>
									</th>
									<th scope="col">
										<div className="row">Jogadora</div>
										<input className="row" type="text" onChange={(e) => this.setFiltro(e.target.value,2)}/>
									</th>
									<th scope="col"></th>
								</tr>
							</thead>
							<ListaJogadoras jogadoras={this.pesquisaFiltro(jogadoras)} action={this.handleAction} />
						</table>
					</div>
				</div>

			</div>

		);
	}
}

