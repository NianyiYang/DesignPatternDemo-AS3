package com.AbstractFactory.Factory
{
	import com.AbstractFactory.Sport.BasketBall;
	import com.AbstractFactory.Person.IPerson;
	import com.AbstractFactory.Sport.ISport;
	import com.AbstractFactory.Person.Tom;
	
	public class ProductFactoryD implements IProductFactory
	{
		public function ProductFactoryD()
		{
			//tom likes basketball
		}
		
		public function PersonInstance():IPerson
		{
			return new Tom();
		}
		
		public function SportInstance():ISport
		{
			return new BasketBall();
		}
	}
}