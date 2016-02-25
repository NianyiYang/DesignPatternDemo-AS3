package com.AbstractFactory.Factory
{
	import com.AbstractFactory.Sport.BasketBall;
	import com.AbstractFactory.Person.IPerson;
	import com.AbstractFactory.Sport.ISport;
	import com.AbstractFactory.Person.Jack;
	
	public class ProductFactoryB implements IProductFactory
	{
		public function ProductFactoryB()
		{
			//jack likes basketball
		}
		
		public function PersonInstance():IPerson
		{
			return new Jack();
		}
		
		public function SportInstance():ISport
		{
			return new BasketBall();
		}
	}
}