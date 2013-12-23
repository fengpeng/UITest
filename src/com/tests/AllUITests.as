package com.tests {
	import com.tests.elements.Test1;
	import com.tests.elements.Test2;

	/**
	 * 
	 * @author Archer
	 * 
	 */
	public class AllUITests {
		//==========================================================================
		//  Constructor
		//==========================================================================
		public function AllUITests() {
			_uiClassList = [
				Test1,
				Test2
			];
		}
		//==========================================================================
		//  Properties
		//==========================================================================
		//-----------------------
		//	UIClassList	
		//-----------------------
		private var _uiClassList:Array = [];
		public function get uiClassList():Array {
			return _uiClassList;
		}
	}
}