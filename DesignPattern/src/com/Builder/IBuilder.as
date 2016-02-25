package com.Builder
{
	/**
	 * 建造者 抽象接口
	 * */
	public interface IBuilder
	{
		/**
		 * 建造方法接口
		 * */
		function buildPartI():void;
		function buildPartII():void;
		
		/**
		 * 产品接口
		 * */
		function getProduct():BuilderProduct;
	}
}