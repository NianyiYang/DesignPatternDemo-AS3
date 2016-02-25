package com.Mediator
{
	/**
	 * 中介者需要知道所有同事类的信息，这也造成当同事类过多时中介者变得异常难以维护，这也是中介者模式的缺点之一
	 * */
	public class Mediator implements IMediator
	{
		private var colleagues:Vector.<Colleague> = new Vector.<Colleague>;
		
		/**
		 * 增加具体同事类
		 * */
		public function addColleague(colleague:Colleague):void
		{
			colleagues.push(colleague);
		}
		
		public function doSomething(message:String, colleague:Colleague):void
		{
			for each(var col:Colleague in colleagues)
			{
				if(col == colleague)
				{
					colleague.getMessage(message);
					break;
				}
			}
		}
	}
}