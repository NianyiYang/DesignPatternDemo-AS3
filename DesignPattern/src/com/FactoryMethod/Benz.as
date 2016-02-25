package com.FactoryMethod
{
	/**
	 * 产品类 Benz，实现基类方法
	 * */
	public class Benz implements ICar
	{
		public function Benz()
		{
		}
		
		public function SetPrice(value:String):void
		{
			trace("Benz Price is " + value);
		}
	}
}