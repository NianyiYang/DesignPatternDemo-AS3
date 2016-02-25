package com.Observer.Observer
{
	public class ConcreteObserver implements IObserver
	{
		//观察者的状态
		private var observerState:String;
		
		public function update(state:String):void
		{
			observerState = state;
			trace("update observer state:" + state);
		}
	}
}