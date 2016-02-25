package com.Bridge.Shape
{	
	import com.Bridge.Color.IColor;

	/**
	 * 桥接模式中描述形状的抽象类，第二维度，即“形状”需要“颜色”才能成为图形
	 * */
	public interface IShape
	{
		function setColor(iColor:IColor):void;
		function desc():String;
	}
}