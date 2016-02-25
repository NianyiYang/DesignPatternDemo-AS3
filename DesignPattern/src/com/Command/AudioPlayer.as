package com.Command
{
	/**
	 * 命令接受者，接受命令进行实际操作
	 * 模拟录音机
	 * */
	public class AudioPlayer
	{
		public function AudioPlayer()
		{
		}
		
		private var _isPlaying:Boolean = false;
		
		/**
		 * 判断此时录音机是否在播放中
		 * 开放get以便被外部类获取
		 * */
		public function get isPlaying():Boolean 
		{
			return _isPlaying;
		}
		
		
		public function play():void
		{
			trace("play...");
			this._isPlaying = true;
		}
		
		public function stop():void
		{
			trace("stop...");
			this._isPlaying = false;
		}
		
		public function pause():void
		{
			trace("pause...");
		}
	}
}