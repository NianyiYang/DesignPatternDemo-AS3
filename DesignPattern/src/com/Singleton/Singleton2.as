package com.Singleton
{
	/**
	 * 饿汉式单例，线程安全
	 * */
	public class Singleton2
	{
		/**
		 * 唯一实例声明
		 * */
		private static var instance:Singleton2 = new Singleton2();
		
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
		public function Singleton2()
		{
		}
		
		/**
		 * 静态工厂方法实例化，注意跟懒汉式的对比，直接返回实例
		 * */
		public static function getInstance():Singleton2
		{
			return instance;
		}
		
		/**
		 * 单例中声明的方法
		 * */
		public function description():String
		{
			return "this is singleton2 (thread safe) ";
		}
	}
}