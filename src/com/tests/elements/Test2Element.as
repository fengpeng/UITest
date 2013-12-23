package com.tests.elements {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	/**
	 * 
	 * @author Archer
	 * 
	 */
	public class Test2Element extends Sprite {
		//==========================================================================
		//  Constructor
		//==========================================================================
		public function Test2Element() {
			super();
			with(graphics) {
				beginFill(0xFF00FF);
				drawRect(0, 0, 255, 255);
				endFill();
			}
			useHandCursor = true;
			addEventListener(MouseEvent.CLICK, clickHandler);
		}
		//==========================================================================
		//  Event Handler
		//==========================================================================
		private function clickHandler(event:MouseEvent):void {
			trace("[Test2Element/clickHandler]");
		}
		
	}
}