package com.Mediator
{
	/**
	 * 抽象同事类，不适用actionscript接口，因为接口不支持函数体定义
	 * */
	public class Colleague
	{
		//将属性定义为protected 以便子类调用
		protected var _name:String;
		protected var _mediator:IMediator;
		
		public function Colleague(name:String,mediator:IMediator)
		{
			this._name = name;
			this._mediator = mediator;
		}
		
		public function getMessage(message:String):void
		{
			
		}
	}
}