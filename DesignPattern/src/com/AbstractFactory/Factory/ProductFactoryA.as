package com.AbstractFactory.Factory
{
	import com.AbstractFactory.Sport.FootBall;
	import com.AbstractFactory.Person.IPerson;
	import com.AbstractFactory.Sport.ISport;
	import com.AbstractFactory.Person.Jack;
	
	public class ProductFactoryA implements IProductFactory
	{
		public function ProductFactoryA()
		{
			//jack likes football
		}
		
		public function PersonInstance():IPerson
		{
			return new Jack();
		}
		
		public function SportInstance():ISport
		{
			return new FootBall();
		}
	}
}