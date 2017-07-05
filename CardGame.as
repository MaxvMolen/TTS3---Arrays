package {

	import flash.display.MovieClip;
	import flash.display.*;
	import flash.events.Event;
	import flash.events.MouseEvent;

	public class CardGame extends MovieClip {

		//vars;
		public var cardA: Card;
		public var Arrays: Array = new Array();
		public var xass: Number;
		public var yass: Number;
		public var N: Number = 1;

		public var X: Number = 0;
		public var Y: Number = 0;

		public var i: Number;
		public var j: Number;

		public function CardGame() {
			Arrayss();
		}

		public function Arrayss() {
			for (i = 0; i < 4; i++) {
				Arrays[i] = [];

				for (j = 0; j < 4; j++) {
					Arrays[i][j] = new Card();
					Arrays[i][j].x = 150 + Arrays[i][j].width * j;
					Arrays[i][j].y = 150 + Arrays[i][j].height * i;
					Arrays[i][j].addEventListener(MouseEvent.CLICK, clickCard);
					this.addChild(Arrays[i][j]);
					trace(Arrays[i][j], "Item", N++);

				}
			}
		}


		function clickCard(e: MouseEvent): void {
			var Cube: MovieClip = MovieClip(e.currentTarget);
			removeChild(Cube);
			Cube = null;
		}

	}
}