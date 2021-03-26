import React from 'react';
import '../App.css';
import { Link } from 'react-router-dom';

function Menu() {
	return (
		<div>
			<nav className="navbar navbar-expand-md navbar-dark bg-dark">

				<a className="navbar-brand mr-md-auto" href="/classificacao">Escala Test</a>

				<button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
					<span className="navbar-toggler-icon"></span>
				</button>

				<section className="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
					<div className="navbar-nav">
						<Link className="nav-item nav-link" to="/classificacao">
							Classificação
						</Link>
						<Link className="nav-item nav-link" to="/escalacao"> 
							Escalação
						</Link>
					</div>
				</section>

			</nav>

		</div>
	);
}

export default Menu;
