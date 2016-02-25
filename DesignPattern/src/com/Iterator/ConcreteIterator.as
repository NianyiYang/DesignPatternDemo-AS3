package com.Iterator
{
	/**
	 * 迭代器方法具体实现
	 * */
	public class ConcreteIterator implements IIterator
	{
		private var _array:Array = null;
		
		private var currentIndex:int = 0;
		
		public function ConcreteIterator(array:Array)
		{
			this._array = array;
		}
		
		public function first():Object
		{
			currentIndex = 0;
			return this._array[currentIndex];
		}
		
		public function next():Object
		{
			currentIndex++;
			return this._array[currentIndex];
		}
		
		public function current():Object
		{
			return this._array[currentIndex];
		}
	}
}