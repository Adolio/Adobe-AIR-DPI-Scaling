package
{
	import flash.display.StageDisplayState;
	import flash.events.Event;
	import flash.geom.Rectangle;
	import flash.system.Capabilities;
	import starling.core.Starling;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.text.TextField;
	import starling.textures.Texture;
	
	public class StarlingMain extends Sprite
	{
		[Embed(source = "../media/textures/1440p.png")] public static const Texture1440p:Class;
		
		public function StarlingMain()
		{
			// Add background image
			var texture:Texture = Texture.fromBitmap(new Texture1440p());
			var image:Image = new Image(texture);
			addChild(image);
			
			// Add information
			var info:TextField = new TextField(2560, 80);
			info.format.size = 32;
			info.format.color = 0xffffff;
			info.text = "Screen resolution: " + Capabilities.screenResolutionX + "x" + Capabilities.screenResolutionY + " | DPI: " + Capabilities.screenDPI + " | Content Scale Factor: " + Starling.current.nativeStage.contentsScaleFactor;
			addChild(info);
			
			// Listen to stage resize 
			Starling.current.nativeStage.addEventListener(Event.RESIZE, onStageResized);
			
			// Switch to fullscreen
			Starling.current.nativeStage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
		}
		
		private function onStageResized(e:Event):void 
		{
			// Update viewport
			Starling.current.viewPort = new Rectangle(0, 0, Starling.current.nativeStage.stageWidth, Starling.current.nativeStage.stageHeight);
		}
	}
}