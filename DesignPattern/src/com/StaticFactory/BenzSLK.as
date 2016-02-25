package com.StaticFactory
{
	/**
	 * 产品类 SLK，实现基类方法
	 * */
	public class BenzSLK implements IBenz
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
		
		public function BenzSLK()
		{
			
		}
		
		public function SetPrice(value:String):void
		{
			trace("BenzSLK Price is " + value);
		}
		
		public function Show(x:int,y:int):void
		{
			trace("BenzSLK");
		}
	}
}