package com.Adapter.ObjectAdapter
{
	/**
	 * 类适配器源接口类，实现各种方法，被适配器适配
	 * */
	public class ObjectAdaptee
	{
		public function funcOne():String
		{
			return "this is the ObjectAdaptee function funcOne";
		}
		
		public function funcTwo():String
		{
			return "this is the ObjectAdaptee function funcTwo";
		}
		
		/**
		 * 源接口类新增的方法newFuncOne
		 * 假设它是用来代替方法funcOne的
		 * */
		public function newFuncOne():String
		{
			return "this is the ObjectAdaptee function newFuncOne";
		}
	}
}