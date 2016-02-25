package com.Command
{
	/**
	 * 命令调用者对象
	 * */
	public class AudioInvoker
	{
		private var _command:ICommand;
		
		public function AudioInvoker()
		{
		}
		
		public function addCommand(command:ICommand):void
		{
			this._command = command;
		}
		
		public function runCommand():void
		{
			this._command.excute();
		}
	}
}