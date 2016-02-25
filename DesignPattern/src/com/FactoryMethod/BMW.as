package com.FactoryMethod
{
	/**
	 * 产品类 BMW，实现基类方法
	 * */
	public class BMW implements ICar
	{
		public function BMW()
		{
		}
		
		public function SetPrice(value:String):void
		{
			trace("BMW Price is " + value);
		}
	}
}