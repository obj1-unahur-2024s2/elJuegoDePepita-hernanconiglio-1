import extras.*
import wollok.game.*

object pepita {

	var property energia = 100
	var property position = game.origin()
	var property image = "pepita.png"

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method vola(kms) {
		energia = energia - kms * 9
	}

	method irA(nuevaPosicion) {
		self.vola(position.distance(nuevaPosicion))
		position = nuevaPosicion
	}

	method estaCansada() {
		return energia <= 0
	}

	method estaEnElNido() = self.position() == nido.position()

	method teletransportate() {
		self.position(game.at(0.randomUpTo(game.width()-1),0.randomUpTo(game.height()-1)))
	}
}

