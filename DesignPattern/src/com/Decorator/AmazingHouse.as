package com.Decorator
{
	/**
	 * 装饰器模式中，对应被装饰的抽象类的具体类
	 * */
	public class AmazingHouse implements IHouseComponent
	{
		/**
		 * 实例化具体类，一般来说具体类中可以实现接口的方法，也可以不实现，由装饰器来实现
		 * */
		public function AmazingHouse()
		{
			//setWall();
			//setRoof();
		}
		
		/**
		 * 造墙
		 * */
		public function setWall():void
		{
			trace("set amazing house wall.");
		}
		
		/**
		 * 造房顶
		 * */
		public function setRoof():void
		{
			trace("set amazing house roof.");
		}
		
		/**
		 * 被装饰的具体类中的接口方法实现
		 * */
		public function show():void
		{
			trace("1.house has been built.");
		}
	}
}