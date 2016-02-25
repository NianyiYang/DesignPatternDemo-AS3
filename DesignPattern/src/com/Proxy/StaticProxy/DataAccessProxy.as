package com.Proxy.StaticProxy
{
	/**
	 * 静态代理，调用具体业务类中的方法实现
	 * 在代理的实现中原则上要保证透明，即接口的一致性
	 * 但是在实际应用过程中，损失一定的一致性是可以接受的
	 * 在这个例子中，就可以将数据库的连接和关闭封装起来
	 * */
	public class DataAccessProxy implements IStaticProxy
	{
		private var dataAccess:DataAccess;
		
		public function DataAccessProxy()
		{
			if(dataAccess == null)
				dataAccess = new DataAccess();
		}
		
		public function Select():void
		{
			dataAccess.Connect();
			dataAccess.Select();
			dataAccess.Close();
		}
		
		public function Delete():void
		{
			dataAccess.Connect();
			dataAccess.Delete();
			dataAccess.Close();
		}
		
		public function Update():void
		{
			dataAccess.Connect();
			dataAccess.Update();
			dataAccess.Close();
		}
		
		public function Insert():void
		{
			dataAccess.Connect();
			dataAccess.Insert();
			dataAccess.Close();
		}
	}
}