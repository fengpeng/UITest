package com.tests.elements {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	/**
	 * 
	 * @author Archer
	 * 
	 */
	public class Test1Element extends Sprite {
		//==========================================================================
		//  Constructor
		//==========================================================================
		public function Test1Element() {
			super();
			with(graphics) {
				beginFill(0xFF0000, 1);
				drawRect(0, 0, 100, 100);
				endFill();
			}
			buttonMode = true;
			addEventListener(MouseEvent.CLICK, clickHandler);
		}
		//==========================================================================
		//  Event Handler
		//==========================================================================
		private function clickHandler(event:MouseEvent):void {
			trace("hello test1 element click");
		}
	}
}