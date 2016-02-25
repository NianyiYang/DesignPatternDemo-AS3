package com.Proxy.DynamicProxy
{
	import flash.utils.getDefinitionByName;

	/**
	 * 动态代理，原则上是不要有任何具体类的实现
	 * 但是actionscript只有伪反射,即要在代理中声明被代理的具体类。。。
	 * */
	public class DynamicProxy implements IDynamicProxy
	{
		private var classRefrence:Class;
		
		private var dataAccess:IDynamicProxy;
		
		private var oracleAccess:OracleAccess;
		private var mysqlAccess:MySqlAccess;
		
		public function DynamicProxy(reflectPath:String)
		{
			if(classRefrence == null)
			{
				classRefrence = getDefinitionByName(reflectPath) as Class;
				dataAccess = new classRefrence() as IDynamicProxy;
			}
		}
		
		public function Select():void
		{
			dataAccess.Select();
		}
		
		public function Delete():void
		{
			dataAccess.Delete();
		}
		
		public function Update():void
		{
			dataAccess.Update();
		}
		
		public function Insert():void
		{
			dataAccess.Insert();
		}
	}
}