package com.StaticFactory
{
	/**
	 * 工厂类，根据声明时传入参数创造产品
	 * */
	public class BenzFactory
	{
		/**
		 * 简单工厂模式中，工厂创建对象时调用的方法为静态方法
		 * */
		public static function CreateInstance(type:String):IBenz
		{
			var b:IBenz = null;
			switch(type)
			{
				case "BenzSLK":
				{
					b = new BenzSLK();	
					break;
				}
				case "BenzCLK":
				{
					b = new BenzCLK();
					break;
				}
			}
			
			return b;
		}
	}
}