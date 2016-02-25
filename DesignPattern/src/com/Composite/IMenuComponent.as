package com.Composite
{
	/**
	 * 树形菜单例子,实现一个模拟的树形菜单
	 * 抽象构件，将简单对象和复杂对象一致性对待
	 * */
	public interface IMenuComponent
	{
		//方法中传入的参数可以是各种对象，这里为了简单起见，传入String
		function add(component:IMenuComponent):void;
		function remove(component:IMenuComponent):void;
		function getName():String;
		function getUrl():String;
		function display(depth:int=0):void;
	}
}