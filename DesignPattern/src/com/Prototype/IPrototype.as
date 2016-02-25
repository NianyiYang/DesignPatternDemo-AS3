package com.Prototype
{
	/**
	 * 原型模式接口，克隆方法返回接口类本身
	 * 注：actionscript在使用深拷贝克隆自定义对象时
	 *    默认只会拷贝自定义对象本身，而不会拷贝自定义对象类的类型定义，需要在构造时注册
	 * */
	public interface IPrototype
	{
		function clone():IPrototype;
	}
}