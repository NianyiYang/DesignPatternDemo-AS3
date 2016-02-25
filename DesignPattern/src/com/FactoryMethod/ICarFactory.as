package com.FactoryMethod
{
	/**
	 * 工厂类接口，被不同工厂类实例化
	 * */
	public interface ICarFactory
	{
		function Instance():ICar; 
	}
}