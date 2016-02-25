package com.Decorator
{
	/**
	 * 由于装饰器需要实例化时传入被装饰的实例，所以不能使用接口来表示抽象装饰类
	 * 要实现接口IHouseComponent的方法，以便能使装饰类装饰另一装饰类
	 * */
	public class HouseDecorator implements IHouseComponent
	{
		private var _component:IHouseComponent;
		
		public function HouseDecorator(component:IHouseComponent)
		{
			this._component = component;
		}
		
		public function show():void
		{
			//可以在此写一些方法，也可以在具体装饰类中覆盖该方法
		}
	}
}