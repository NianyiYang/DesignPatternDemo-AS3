package com.Builder
{
	/**
	 * 建造者模式具体实现类，可以有多种实现，只需要分别创建具体建造者类即可
	 * */
	public class ConcreteBuilderB implements IBuilder
	{
		/**
		 * 声明产品类
		 * */
		protected var _product:BuilderProduct = null;
		
		/**
		 * 实例化产品类
		 * */
		public function ConcreteBuilderB()
		{
			this._product = new BuilderProduct();
		}
		
		/**
		 * 建造组件1
		 * */
		public function buildPartI():void
		{
			this._product.add("football");
		}
		
		/**
		 * 建造组件2
		 * */
		public function buildPartII():void
		{
			this._product.add("Basketball");
		}
		
		/**
		 * 取出产品
		 * */
		public function getProduct():BuilderProduct
		{
			return this._product;
		}
	}
}