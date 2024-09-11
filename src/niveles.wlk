import pepita.*
import comidas.*
import extras.*
import wollok.game.*

object tutorial1 {

	method iniciar() {
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarColisiones()
		config.configurarTeclas()
		game.schedule(5000, {pepita.teletransportate()})
	}

}

object tutorial2 {

	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
		
	}

}

object tutorial3 {

	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
		config.configurarColisiones()
	}

}

object config {
	var property tiempo = 500
	method configurarTeclas() {
		keyboard.left().onPressDo({ 
			if(0 < pepita.position().x())
				pepita.position(pepita.position().left(1))})
		keyboard.right().onPressDo({ 
			if(game.width()-1 > pepita.position().x()) 
				pepita.position(pepita.position().right(1))})
		keyboard.down().onPressDo({ 
			if(0 < pepita.position().y())
				pepita.position(pepita.position().down(1))})
		keyboard.up().onPressDo({ 
			if(game.height()-1 > pepita.position().y())
				pepita.position(pepita.position().up(1))})
		keyboard.t().onPressDo({
			game.onTick(tiempo,"TransportacionPepita",{pepita.teletransportate()})
		})
		keyboard.p().onPressDo({game.removeTickEvent("TransportacionPepita")})
	}

	method configurarColisiones() {
		game.onCollideDo(pepita, {algo => algo.teEncontro(pepita)})
	}

}

