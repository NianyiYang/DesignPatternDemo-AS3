package com.Proxy.StaticProxy
{
	/**
	 * 具体业务类，模拟数据库连接与操作
	 * */
	public class DataAccess implements IStaticProxy
	{
		public function DataAccess()
		{
			
		}
		
		public function Connect():void
		{
			trace("Database is connected.");
		}
		
		public function Close():void
		{
			trace("Database is closed.");
		}
		
		public function Select():void
		{
			trace("Database operation : select");
		}
		
		public function Delete():void
		{
			trace("Database operation : delete");
		}
		
		public function Update():void
		{
			trace("Database operation : update");
		}
		
		public function Insert():void
		{
			trace("Database operation : insert");
		}
	}
}