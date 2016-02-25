package com.Proxy.DynamicProxy
{
	public class MySqlAccess implements IDynamicProxy
	{
		public function MySqlAccess()
		{
		}
		
		public function Connect():void
		{
			trace("MySql Database is connected.");
		}
		
		public function Close():void
		{
			trace("MySql Database is closed.");
		}
		
		public function Select():void
		{
			Connect();
			trace("MySql Database operation : select");
			Close();
		}
		
		public function Delete():void
		{
			Connect();
			trace("MySql Database operation : delete");
			Close();
		}
		
		public function Update():void
		{
			Connect();
			trace("MySql Database operation : update");
			Close();
		}
		
		public function Insert():void
		{
			Connect();
			trace("MySql Database operation : insert");
			Close();
		}
	}
}