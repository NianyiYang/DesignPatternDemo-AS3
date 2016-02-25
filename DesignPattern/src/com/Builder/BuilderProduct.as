package com.Builder
{
	/**
	 * 建造者模式的产品类
	 * */
	public class BuilderProduct
	{
		/**
		 * 存放产品组件的数组
		 * */
		public var parts:Array = new Array();
		
		/**
		 * 添加组件
		 * */
		public function add(part:String):void
		{
			parts.push(part);
		}
		
		/**
		 * 显示组件
		 * */
		
		public function show():String
		{
			var output:String = "This product has ";
			
			for each(var part:String in parts)
				output += part + " - ";
			
			return output;
		}
	}
}