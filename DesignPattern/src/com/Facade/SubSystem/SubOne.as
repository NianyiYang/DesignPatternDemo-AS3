package com.Facade.SubSystem
{
	/**
	 * 子系统一，定义两个接口 vaild 和 saveOne
	 * */
	public class SubOne
	{
		public function SubOne()
		{
		}
		
		public function vaild():void
		{
			trace("Sub system one:vaild");
		}
		
		public function saveOne():void
		{
			trace("Sub system one:save");
		}
	}
}