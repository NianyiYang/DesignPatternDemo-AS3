package com.Flyweight
{
	public class FlyweightFactory
	{
		private var flyweightVector:Vector.<IFlyweight>;
		
		public function FlyweightFactory()
		{
			flyweightVector = new Vector.<IFlyweight>;
		}
		
		public function getFlyweight(char:String):IFlyweight
		{
			var flyweight:IFlyweight = null;
			for each(var fw:IFlyweight in flyweightVector)
			{
				if(fw&&fw.char == char)
				{
					//如果找到匹配的享元对象，中断循环，返回
					flyweight = fw;
					break;
				}
			}
			
			if(!flyweight)
			{
				flyweight = new CharFlyweight(char);
				flyweightVector.push(flyweight);
			}
			return flyweight;
		}
		
		public function getNumber():void
		{
			trace(flyweightVector.length.toString());
		}
	}
}