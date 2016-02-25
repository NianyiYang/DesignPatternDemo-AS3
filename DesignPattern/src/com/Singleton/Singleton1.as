package com.Singleton
{
	/**
	 * 懒汉式单例，非线程安全
	 * */
	public class Singleton1
	{
		/**
		 * 唯一实例声明
		 * */
		private static var instance:Singleton1 = null;
		
		/**
		 * 单例中声明的变量
		 * */
		private var _data:String;
		
		public function get data():String 
		{
			return _data;
		}
		
		public function set data(value:String):void 
		{
			_data = value;
		}
		
		/**
		 * 应该是私有的默认构造函数，保证不能被外部使用
		 * 但是actionscript3不支持私有构造函数...
		 * 所以此处假设是私有的，无法直接实例化
		 * */
		public function Singleton1()
		{
		
		}
		
		/**
		 * 静态工厂方法实例化
		 * */
		public static function getInstance():Singleton1
		{
			if(instance == null)
				instance = new Singleton1();
			
			return instance;
		}
		
		/**
		 * 单例中声明的方法
		 * */
		public function description():String
		{
			return "this is singleton1 ";
		}
	}
}