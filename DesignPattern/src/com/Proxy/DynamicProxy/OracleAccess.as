package com.Proxy.DynamicProxy
{
	public class OracleAccess implements IDynamicProxy
	{
		public function OracleAccess()
		{
		}
		
		public function Connect():void
		{
			trace("Oracle Database is connected.");
		}
		
		public function Close():void
		{
			trace("Oracle Database is closed.");		
		}
		
		public function Select():void
		{
			Connect();
			trace("Oracle Database operation : select");
			Close();
		}
		
		public function Delete():void
		{
			Connect();
			trace("Oracle Database operation : delete");
			Close();
		}
		
		public function Update():void
		{
			Connect();
			trace("Oracle Database operation : update");
			Close();
		}
		
		public function Insert():void
		{
			Connect();
			trace("Oracle Database operation : insert");
			Close();
		}
	}
}