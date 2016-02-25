package com.Adapter.ObjectAdapter
{
	/**
	 * 对象适配器，使用委派的方法适配接口
	 * */
	public class ObjectAdapter implements IObjectTarget
	{
		private var _adaptee:ObjectAdaptee;
		
		/**
		 * 构造函数，传入源接口对象,实例化
		 * */
		public function ObjectAdapter(adaptee:ObjectAdaptee)
		{
			this._adaptee = adaptee;
		}
		
		public function funcOne():String
		{
			return this._adaptee.newFuncOne();
		}
		
		public function funcTwo():String
		{
			return this._adaptee.funcTwo();
		}
	}
}