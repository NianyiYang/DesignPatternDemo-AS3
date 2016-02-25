package com.Builder
{
	/**
	 * 指导者类，指导Builder如何创建产品
	 * */
	public class Director
	{
		/**
		 * 传入建造者参数，指导如何建造产品
		 * */
		public function BuildProduct(builder:IBuilder):void
		{
			builder.buildPartI();
			builder.buildPartII();
		}
	}
}