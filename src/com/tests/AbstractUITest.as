package com.tests {
	import com.tests.interfaces.IDestroy;
	import com.tests.interfaces.IUITest;
	
	import flash.display.Sprite;
	
	/**
	 * 
	 * @author Archer
	 * 
	 */
	public class AbstractUITest extends Sprite implements IDestroy, IUITest {
		//==========================================================================
		//  Public methods
		//==========================================================================	
		public function destroy():void {
		}
		public function initialize():void {
		}
		public function test():void {
		}
	}
}