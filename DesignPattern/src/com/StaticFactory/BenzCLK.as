package com.StaticFactory
{
	/**
	 * 产品类 CLK，实现基类方法
	 * */
	public class BenzCLK implements IBenz
	{
		private var _x:int = 0;
		
		public function get x():int 
		{
			return _x;
		}
		
		public function set x(value:int):void 
		{
			_x = value;
		}
		
		private var _y:int = 0;
		
		public function get y():int 
		{
			return _y;
		}
		
		public function set y(value:int):void 
		{
			_y = value;
		}
		
		public function BenzCLK()
		{

		}
		
		public function SetPrice(value:String):void
		{
			trace("BenzCLK Price is " + value);
		}
		
		public function Show(x:int, y:int):void
		{
			trace("BenzCLK");
		}
	}
}