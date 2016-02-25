package com.Observer.Subject
{
	public class ConcreteSubject extends Subject
	{
		private var _state:String;
		
		public function get state():String 
		{
			return _state;
		}
		
		public function changeState(state:String):void
		{
			_state = state;
			this.nodifyObserver(state);
			trace("nodify to observer:" + state);
		}
	}
}