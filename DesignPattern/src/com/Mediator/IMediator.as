package com.Mediator
{
	/**
	 * 中介者抽象接口
	 * */
	public interface IMediator
	{
		function addColleague(colleague:Colleague):void;
		function doSomething(message:String,colleague:Colleague):void;
	}
}