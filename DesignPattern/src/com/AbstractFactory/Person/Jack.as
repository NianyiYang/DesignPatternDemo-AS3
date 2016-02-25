package com.AbstractFactory.Person
{
	public class Jack implements IPerson
	{
		public function Jack()
		{
		}
		
		public function PrintName():String
		{
			var s:String = "I am Jack";
			return s;
		}
	}
}