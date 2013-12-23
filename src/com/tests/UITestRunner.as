package com.tests {		
	
	import com.bit101.components.List;
	import com.bit101.components.ListItem;
	import com.bit101.components.TextArea;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Rectangle;
	import flash.utils.getQualifiedClassName;
	
	import com.tests.vo.UIListVO;
	
	/**
	 * 
	 * @author Archer
	 * 
	 */
	[SWF(width="960", height="600", frameRate="30", backgroundColor="0xCCCCCC")]
	public class UITestRunner extends Sprite {
		//==========================================================================
		//  Constructor
		//==========================================================================
		public function UITestRunner() {
			super();
			if (stage) {
				initialize();
			} else {
				addEventListener(Event.ADDED_TO_STAGE, add2StageHandler);
			}
		}
		//==========================================================================
		//  Variables
		//==========================================================================
		private var currentTest:AbstractUITest;
		private var list:List = new List(null, 0, 0);
		//==========================================================================
		//  Private methods
		//==========================================================================
		private function initialize():void {
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			//
			var configuration:AllUITests = new AllUITests();
			parseData(configuration.uiClassList);
			list.addEventListener(Event.SELECT, listSelectedHandler);
			list.setSize(200, stage.stageHeight);
			addChild(list);
		}
		private function parseData(classList:Array):Array {
			var dataList:Array = [];
			var length:int = classList.length;
			var item:ListItem;
			var className:String;
			for (var i:int = 0; i < length; i++) {
				list.addItem(new UIListVO(getQualifiedClassName(classList[i]).split("::")[1], classList[i]));	
			}
			return dataList;	
		}
		private function createTest(vo:UIListVO):void {
			if (currentTest) {
				removeChild(currentTest);
				currentTest.destroy();
				currentTest = null;
			}
			currentTest = new vo.value() as AbstractUITest;
			if (!currentTest) {
				throw new TypeError(vo.value.toString() + "not AbstractUITest subclass!!");
			}
		}
		//==========================================================================
		//  Event Handler
		//==========================================================================
		private function listSelectedHandler(evt:Event):void {
			var data:UIListVO = List(evt.currentTarget).selectedItem as UIListVO;
			createTest(data);
			//
			currentTest.initialize();
			currentTest.test();
			var rectangle:Rectangle = new Rectangle(list.width, 0, stage.stageWidth - list.width, stage.stageHeight);
			currentTest.x = rectangle.x + ((rectangle.width - currentTest.width) >> 1);
			currentTest.y = (rectangle.height - currentTest.height) >> 1;
			addChild(currentTest);
		}
		private function add2StageHandler(evt:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, add2StageHandler);
			initialize();
		}
	}
}