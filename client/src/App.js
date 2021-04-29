import React from 'react';
import './App.css';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';

import Menu from './components/Menu';
import Classificacao from './components/Classificacao';
import Escalacao from './components/PageUsuario';

function App() {
	return (
		<Router>
			<div className="mx-auto">
				<Menu />
				<Switch>
					<Route  path="/" exact component={Classificacao} />
					<Route  path="/classificacao" component={Classificacao} />
					<Route  path="/escalacao" component={Escalacao} />
				</Switch>
			</div>
		</Router>

	);
}

export default App;
