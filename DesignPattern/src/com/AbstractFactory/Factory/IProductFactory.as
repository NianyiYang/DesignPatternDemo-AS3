package com.AbstractFactory.Factory
{
	import com.AbstractFactory.Person.IPerson;
	import com.AbstractFactory.Sport.ISport;

	/**
	 * 抽象工厂类接口，被不同工厂类实例化，接口不同的产品之间可以任意搭配，这就是抽象工厂的用意
	 * 因为两个产品类接口分别有两种实现，所以有2 x 2 = 4 种不同的装配方法
	 * */
	public interface IProductFactory
	{
		function PersonInstance():IPerson;
		function SportInstance():ISport;
	}
}