package com.Flyweight
{
	/**
	 * 单纯享元模式的抽象享元模式
	 * 内蕴状态：表示享元对象本身固有的属性，不可在外部更改；或者在构造时传入，之后不能修改
	 * 外蕴状态：表示享元对象可以修改的那一部分
	 * */
	public interface IFlyweight
	{
		function get char():String;
		
		function setPosition(x:int,y:int):void;
		function show():String;
	}
}