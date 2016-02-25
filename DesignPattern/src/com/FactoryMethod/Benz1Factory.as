package com.FactoryMethod
{
	/**
	 * Benz工厂类，后期扩展加入，可见不用修改其他工厂类，只用声明接口并新建此类即可
	 * */
	public class Benz1Factory implements ICarFactory
	{
		/**
		 * 注意是返回基类
		 * */
		public function Instance():ICar
		{
			 return new Benz();
		}
	}
}