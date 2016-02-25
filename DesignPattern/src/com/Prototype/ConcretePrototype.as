package com.Prototype
{
	import flash.net.registerClassAlias;
	import flash.utils.ByteArray;

	public class ConcretePrototype implements IPrototype
	{
		/**
		 * 重要！！！如果用actionscript3 的话
		 * 构造函数中，调用registerClassAlias方法，为类注册一个别名，将类序列化
		 * 如果没有该方法，深拷贝的对象将没有类型定义，而且不可进行强制类型转换
		 * */
		public function ConcretePrototype()
		{
			registerClassAlias("clone",ConcretePrototype);
		}
		
		/**
		 * 为对象设置一个参数
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
		 * 实现深拷贝方法
		 * 注意：actionscript不支持直接拷贝自定义对象类的类型定义，如果强制转换为自定义类型会报错
		 * 所以在构造函数中调用registerClassAlias方法对对象类型定义进行注册
		 * */
		public function clone():IPrototype
		{
			var by:ByteArray = new ByteArray();
			by.writeObject(this);
			
			var temp:Object = null;
			
			if(by.position != 0)
			{
				//表示从头开始读取
				by.position = 0;
				temp = by.readObject();
			}
			
			return temp as IPrototype;
		}
	}
}