import React, { Component } from 'react';
import '../App.css';
import FormacaoDataService from "../services/formacao.service";
import JogadorasDataService from "../services/jogadoras.service";
import EquipesDataService from "../services/equipes.service";


export default class Escalacao extends Component {
	constructor(props) {
		super(props);

		this.state = {
			formacao: [],
			escalacao: [],
			jogadoras: [],
			equipes: [],
			teste: [],
			posicoesFormacao: [],
			posicoesEscalacao: [],
			jogadorasPorTime: [],
			maxJogadoras: 4,
			q:"",
		};
		this.setEsquema = this.setEsquema.bind(this);
		this.setFormacao = this.setFormacao.bind(this);
		this.addJogadora = this.addJogadora.bind(this);
		this.handleAction = this.handleAction.bind(this);
		this.testeFiltro = this.testeFiltro.bind(this);
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

		novaformacao[i] = { posicao: "GOLEIRA" };
		i++;

		if (this.state.posicoesFormacao.num_lateral > 0) {
			novaformacao[i] = { posicao: "LATERAL" };
			i++;

			for (var j = 0; j < this.state.posicoesFormacao.num_zagueira; j++) {
				novaformacao[i] = { posicao: "ZAGUEIRA" };
				i++;
			}

			novaformacao[i] = { posicao: "LATERAL" };
			i++;
		} else {
			for (var j = 0; j < this.state.posicoesFormacao.num_zagueira; j++) {
				novaformacao[i] = { posicao: "ZAGUEIRA" };
				i++;
			}
		}

		for (var j = 0; j < this.state.posicoesFormacao.num_meia; j++) {
			novaformacao[i] = { posicao: "MEIO CAMPO" };
			i++;
		}

		for (var j = 0; j < this.state.posicoesFormacao.num_atacante; j++) {
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

	changeQ(q){
		this.setState({
			q:q
		})
	}

	testeFiltro(rows){
		var result = rows.filter(row => row.posicao.toLowerCase().indexOf(this.state.q) > -1);
		return result;
	}

	render() {

		const { formacao } = this.state;
		//var { jogadoras } = this.testeFiltro(this.state.jogadoras);
		var { jogadoras } = this.state;
		const { equipes } = this.state;

		jogadoras = jogadoras.filter(row => row.posicao.toLowerCase().indexOf(this.state.q.toLowerCase()) > -1)
		//console.log(jogadoras);

		return (

			<div className="m-3">

				<div className="alert alert-danger alert-dismissible" role="alert">
					<button type="button" className="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<strong>Warning!</strong> Better check yourself, you're not looking too good.
				</div>

				<div className="header m-5">
					<h1>Escalação</h1>
				</div>

				<div className="form-inline">
					<label>
						Formação
          				<select id="selectFormacao" className="custom-select m-2" onChange={this.setEsquema}>
							{formacao &&
								formacao.map((f, index) => (
									<option value={f.nome}>{f.nome}</option>
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
							{this.state.escalacao.map((jogadora, index) => (
								<tr key={"jog" + index}>
									<td>{jogadora.posicao}</td>
									<td>
										<img src={require("../imagens/escudos/" + jogadora.equipe.escudo).default} alt="" title={jogadora.equipe.nome} width="65" height="65" />
									</td>
									<td>{jogadora.nome}</td>
									<td>
										<div className={jogadora.add ? "btn btn-success" : "btn btn-danger"} onClick={() => this.handleAction(jogadora)}>+</div>
									</td>
								</tr>
							))}
						</tbody>
					</table>
				</div>
				<div>
					<div className="header m-5">
						<h1>Lista de Jogadoras</h1>
					</div>
					<div className="my-5">
						<button className="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseFiltros" aria-expanded="false" aria-controls="collapseExample">
							Filtros
					</button>
						<div className="shadow collapse my-3 mx-0 p-3" id="collapseFiltros">

							<div className="row" key="filtroHeader">
								<div className="col-sm">
									<div className="mt-2">
										<h5>Posição</h5>
									</div>
								</div>
								<div className="col-sm">
									<div className="mt-2">
										<h5>Equipes</h5>
									</div>
								</div>
							</div>
							<div className="row" key="filtroBody">
								<div className="col-sm">
									<Filtro id="filtroPosicaoGOL" text="Goleira" tipo="posicao" valor="GOLEIRA" setFilter={this.setFilter} />
									<Filtro id="filtroPosicaoZAG" text="Zagueira" tipo="posicao" valor="ZAGUEIRA" setFilter={this.setFilter} />
									<Filtro id="filtroPosicaoLAT" text="Lateral" tipo="posicao" valor="LATERAL" setFilter={this.setFilter} />
									<Filtro id="filtroPosicaoMEI" text="Meia" tipo="posicao" valor="MEIO CAMPO" setFilter={this.setFilter} />
									<Filtro id="filtroPosicaoATA" text="Atacante" tipo="posicao" valor="ATACANTE" setFilter={this.setFilter} />
								</div>
								<div className="col-sm">
									{equipes &&
										equipes.map((equipe, index) => (
											<Filtro id={"filtroEquipe" + equipe.id} text={equipe.nome} tipo="equipe" valor={equipe.id} setFilter={this.setFilter} />
										))}
								</div>
							</div>

							<button className="btn btn-primary m-2" type="button" onClick={() => this.getFilter}>
								Aplicar Filtros
						</button>
						</div>


					</div>
					<div>
						<input type="text" value={this.state.q} onChange={(e) => this.changeQ(e.target.value)}/>
					</div>

					<div>
						<table className="table my-3 mx-auto"
							id="tablejogadoras">
							<thead>
								<tr>
									<th>Posição</th>
									<th>Time</th>
									<th>Jogadora</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								{jogadoras &&
									jogadoras.map((jogadora, index) => (
										<JogadoraRow key={jogadora.id} jogadora={jogadora} action={this.handleAction} />
									))}
							</tbody>
						</table>
					</div>
				</div>
			</div>

		);
	}
}

class Filtro extends Component {

	render() {

		return (

			<div className="form-check">
				<input className="form-check-input" type="checkbox" value={this.props.tipo + "=" + this.props.valor} key={this.props.id} onChange={this.props.setFilter} />
				<label className="form-check-label">
					{this.props.text}
				</label>
			</div>


		);
	}
}

class JogadoraRow extends Component {

	render() {

		var jogadora = this.props.jogadora

		return (
			<tr key={this.props.key}>
				<td>{this.props.jogadora.posicao}</td>
				<td>
					<img src={require("../imagens/escudos/" + this.props.jogadora.equipe.escudo).default} alt="" title={this.props.jogadora.equipe.nome} width="65" height="65" />
				</td>
				<td>{this.props.jogadora.nome}</td>
				<td>
					<div className={jogadora.add ? "btn btn-success" : "btn btn-danger"} onClick={() => this.props.action(this.props.jogadora)}>+</div>
				</td>
			</tr>
		);

	}
}
