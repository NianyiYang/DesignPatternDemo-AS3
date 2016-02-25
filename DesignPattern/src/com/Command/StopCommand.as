package com.Command
{
	/**
	 * 具体命令类，为每个命令生成一个单独的类
	 * */
	public class StopCommand implements ICommand
	{
		private var _player:AudioPlayer;
		
		public function StopCommand(player:AudioPlayer)
		{
			this._player = player;
		}
		
		public function excute():void
		{
			this._player.stop();
		}
	}
}