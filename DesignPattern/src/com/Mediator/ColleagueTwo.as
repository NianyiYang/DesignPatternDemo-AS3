package com.Mediator
{
	public class ColleagueTwo extends Colleague
	{
		public function ColleagueTwo(name:String, mediator:IMediator)
		{
			super(name, mediator);
		}
		
		/**
		 * 中介类联系接口
		 * */
		public function constact(message:String):void
		{
			_mediator.doSomething(message,this);
		}
		
		/**
		 * 获取信息
		 * */
		override public function getMessage(message:String):void
		{
			trace("name："+_name+",message："+message);
		}
	}
}