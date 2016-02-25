package com.Command
{
	/**
	 * 具体命令类，为每个命令生成一个单独的类
	 * */
	public class PauseCommand implements ICommand
	{
		private var _player:AudioPlayer;
		
		public function PauseCommand(player:AudioPlayer)
		{
			this._player = player;
		}
		
		public function excute():void
		{
			//如果处于正在播放状态，则执行；反之不执行pause
			if(this._player.isPlaying)
				this._player.pause();
		}
	}
}