package com.tests.vo {
	/**
	 * 
	 * @author Archer
	 * 
	 */
	public class UIListVO {
		//==========================================================================
		//  Constructor
		//==========================================================================
		/**
		 * 
		 * @param label		show the label in list
		 * @param cls
		 * 
		 */
		public function UIListVO(label:String, cls:Class) {
			_label = label;
			_value = cls;
		}
		//==========================================================================
		//  Properties
		//==========================================================================
		//-----------------------
		//	label	
		//-----------------------
		private var _label:String;
		public function get label():String {
			return _label;
		}
		//-----------------------
		//	value	
		//-----------------------
		private var _value:Class;
		public function get value():Class {
			return _value;
		}
	}
}