package com.Bridge.Usage
{
	import com.Bridge.Shape.IShape;

	/**
	 * 桥接模式中描述用途的抽象类，第三维度，即“图形”起到什么作用
	 * */
	public interface IUsage
	{
		function setUsage(iShape:IShape):void;
		function desc():String;
	}
}