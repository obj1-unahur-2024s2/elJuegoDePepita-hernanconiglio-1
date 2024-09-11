import pepita.*
import wollok.game.*

object nido {

	method image()="nido.png"
	method position() = game.at(game.width()-2, game.height()-2)
	method teEncontro(conLoQueChoco) {
		conLoQueChoco.image("pepita-grande.png")
	} 
}

object silvestre {

	var property position = game.at(5,0)
	method image()= "silvestre.png"
	method teEncontro(conLoQueChoco) {
		conLoQueChoco.image("pepita-gris.png")
	}
}

