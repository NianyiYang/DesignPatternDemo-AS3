package com.Observer.Subject
{
	import com.Observer.Observer.IObserver;

	/**
	 * 观察者模式的抽象主题类，主要作用是负责维护一个观察者对象的数组，对观察者进行增加和删除操作
	 * */
	public class Subject
	{
		private var observers:Vector.<IObserver> = new Vector.<IObserver>;
		
		/**
		 * 添加监听
		 * */
		public function addListener(observer:IObserver):void
		{
			observers.push(observer);
			trace("--addListener");
		}
		
		/**
		 * 删除监听
		 * */
		public function removeListener(observer:IObserver):void
		{
			observers.splice(observers.indexOf(observer),1);
			trace("--removeListener");
		}
		
		/**
		 * 通知所有观察者对象
		 * */
		public function nodifyObserver(state:String):void
		{
			for each(var observer:IObserver in observers)
			{
				observer.update(state);
			}
		}
	}
}