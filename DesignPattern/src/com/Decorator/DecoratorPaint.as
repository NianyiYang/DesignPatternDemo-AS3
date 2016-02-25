package com.Decorator
{
	public class DecoratorPaint extends HouseDecorator
	{
		private var _component:IHouseComponent;
		
		/**
		 * 实例化，非默认构造函数需要继承超类中的构造函数
		 * */
		public function DecoratorPaint(component:IHouseComponent)
		{
			super(component);
			this._component = component;
		}
		
		/**
		 * 装饰器一，在房屋建造好之前先装饰
		 * */
		override public function show():void
		{
			trace("0.Paint the wall before house been built.");
			this._component.show();
		}
	}
}