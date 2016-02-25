package com.Builder
{
	/**
	 * 建造者模式具体实现类
	 * */
	public class ConcreteBuilderA implements IBuilder
	{
		/**
		 * 声明产品类
		 * */
		protected var _product:BuilderProduct = null;
		
		/**
		 * 实例化产品类
		 * */
		public function ConcreteBuilderA()
		{
			this._product = new BuilderProduct();
		}
		
		/**
		 * 建造组件1
		 * */
		public function buildPartI():void
		{
			this._product.add("volleyball");
		}
		
		/**
		 * 建造组件2
		 * */
		public function buildPartII():void
		{
			this._product.add("baseball");
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