package com.Decorator
{
	public class DecoratorGlass extends HouseDecorator
	{
		private var _component:IHouseComponent;
		
		/**
		 * 实例化，非默认构造函数需要继承超类中的构造函数
		 * */
		public function DecoratorGlass(component:IHouseComponent)
		{
			super(component);
			this._component = component;
		}
		
		/**
		 * 装饰器二，在房屋建造好之后装饰
		 * */
		override public function show():void
		{
			this._component.show();
			trace("2.Then put the glass on the wall.");
		}
	}
}