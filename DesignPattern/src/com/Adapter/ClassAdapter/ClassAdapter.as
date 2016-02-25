package com.Adapter.ClassAdapter
{
	/**
	 * 类适配器，调用接口,actionscript不支持多继承，所以只作为演示
	 * */
	public class ClassAdapter extends ClassAdaptee implements IClassTarget
	{
		public function ClassAdapter()
		{
			super();
		}
		
		/**
		 * 假定源接口改变，funcOne方法没有了，则在适配器方法的实现中继承超类的newFUncOne方法
		 * */
		override public function funcOne():String
		{
			return super.newFuncOne();
		}
		
		override public function funcTwo():String
		{
			return super.funcTwo();
		}
	}
}