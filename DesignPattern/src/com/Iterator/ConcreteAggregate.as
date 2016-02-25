package com.Iterator
{
	/**
	 * 容器实现的类
	 * */
	public class ConcreteAggregate implements IAggregate
	{
		private var _array:Array = null;
		
		public function ConcreteAggregate(array:Array)
		{
			this._array = array;
		}
		
		public function createIterator():IIterator
		{
			return new ConcreteIterator(this._array);
		}
	}
}