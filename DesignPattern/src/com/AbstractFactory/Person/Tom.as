package com.AbstractFactory.Person
{
	public class Tom implements IPerson
	{
		public function Tom()
		{
		}
		
		public function PrintName():String
		{
			var s:String = "I am Tom";
			return s;
		}
	}
}