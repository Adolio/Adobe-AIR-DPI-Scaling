package
{
	import flash.display.Sprite;
	import starling.core.Starling;
	
	public class Main extends Sprite
	{
		public function Main()
		{
			// Setup runtime
			stage.frameRate = 60;

			// Setup Starling
			var starling:Starling = new Starling(StarlingMain, stage);
			starling.start();
			//starling.showStats = true;
		}
	}
}