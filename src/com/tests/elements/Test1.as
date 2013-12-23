package com.tests.elements {
	import com.tests.AbstractUITest;
	
	/**
	 * 
	 * @author Archer
	 * 
	 */
	public class Test1 extends AbstractUITest {
		//==========================================================================
		//  Constructor
		//==========================================================================
		public function Test1() {
			super();
		}
		//==========================================================================
		//  Variables
		//==========================================================================
		private var element:Test1Element;
		//==========================================================================
		//  Override methods
		//==========================================================================
		override public function initialize():void {
			element = new Test1Element();	
		}
		override public function test():void {
			addChild(element);
		}
	}
}