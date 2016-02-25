package com.FactoryMethod
{
	/**
	 * BMW工厂类
	 * */
	public class BMWFactory implements ICarFactory
	{
		/**
		 * 注意是返回基类
		 * */
		public function Instance():ICar
		{
			return new BMW();
		}
	}
}