package com.Composite
{
	public class ItemComposite implements IMenuComponent
	{
		private var _name:String;
		private var _url:String;
		
		/**
		 * 构造时传入名称和值
		 * */
		public function ItemComposite(name:String,url:String="")
		{
			this._name = name;
			this._url = url;
		}
		
		public function add(component:IMenuComponent):void
		{
			//简单对象，不实现该接口，不做任何事
		}
		
		public function remove(component:IMenuComponent):void
		{
			//简单对象，不实现该接口，不做任何事
		}
		
		public function getName():String
		{
			return this._name;
		}
		
		public function getUrl():String
		{
			return this._url;
		}
		
		public function display(depth:int=0):void
		{
			//生成标识偏移量的字符
			var str:String = "";
			for (var i:int = 0; i < depth;i++)
				str += "-";
			
			//直接在控制台打印
			trace(str + this._name + "(" + this._url + ")");
		}
	}
}