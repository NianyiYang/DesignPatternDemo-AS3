package com.Flyweight
{
	import mx.utils.StringUtil;

	/**
	 * 具体享元角色，以ID为内蕴状态构造
	 * */
	public class CharFlyweight implements IFlyweight
	{
		//内蕴状态
		private var _char:String = "";
		
		//因为actionscript3.0中没有hashMap的实现，所以取本来为内蕴状态的char属性作为标识
		public function get char():String 
		{
			return _char;
		}
		
		private var _size:String = "";
		private var _color:String = "";
		
		//外蕴状态
		private var _x:int = 0;
		private var _y:int = 0;
		
		public function CharFlyweight(char:String)
		{
			this._char = char;
			this._size = "Big";
			this._color = "Red";
		}
		
		//外蕴状态设置的外部接口
		public function setPosition(x:int, y:int):void
		{
			this._x = x;
			this._y = y;
		}
		
		//打印结果
		public function show():String
		{
			return StringUtil.substitute("this is a char {0},size:{1},color:{2},position:x={3},y={4}",
				this._char,this._size,this._color,this._x,this._y);
		}
	}
}