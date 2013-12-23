package com.tests.elements {
	import com.tests.AbstractUITest;
	
	public class Test2 extends AbstractUITest {
		//==========================================================================
		//  Constructor
		//==========================================================================
		public function Test2() {
			super();
		}
		//==========================================================================
		//  Variables
		//==========================================================================
		private var element:Test2Element;
		//==========================================================================
		//  Override methods
		//==========================================================================
		override public function initialize():void {
			element = new Test2Element();	
		}
		override public function test():void {
			addChild(element);
		}
	}
}