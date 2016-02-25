package com.AbstractFactory.Factory
{
	import com.AbstractFactory.Sport.FootBall;
	import com.AbstractFactory.Person.IPerson;
	import com.AbstractFactory.Sport.ISport;
	import com.AbstractFactory.Person.Tom;
	
	public class ProductFactoryC implements IProductFactory
	{
		public function ProductFactoryC()
		{
			//Tom likes Football
		}
		
		public function PersonInstance():IPerson
		{
			return new Tom();
		}
		
		public function SportInstance():ISport
		{
			return new FootBall();
		}
	}
}