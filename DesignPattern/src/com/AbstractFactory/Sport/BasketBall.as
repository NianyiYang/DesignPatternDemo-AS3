package com.AbstractFactory.Sport
{
	public class BasketBall implements ISport
	{
		public function BasketBall()
		{
		}
		
		public function SetSport():String
		{
			var s:String = "I like BasketBall";
			return s;
		}
	}
}