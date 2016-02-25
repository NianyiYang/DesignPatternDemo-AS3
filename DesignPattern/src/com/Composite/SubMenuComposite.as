package com.Composite
{
	/**
	 * 组合模式的树枝组件，显示递归
	 * */
	public class SubMenuComposite implements IMenuComponent
	{
		/**
		 * 在actionscript3.0中支持Vector，类似于Java或者C++中的泛型
		 * 使用上同Array差别其实不大，只是省去了拆箱装箱操作，而且访问和迭代速度要快些
		 * */
		private var _item:Vector.<IMenuComponent> = new Vector.<IMenuComponent>;
		private var _name:String;
		
		public function SubMenuComposite(name:String)
		{
			this._name = name;
		}
		
		public function add(component:IMenuComponent):void
		{
			//增加节点操作的实现
			this._item.push(component);
		}
		
		public function remove(component:IMenuComponent):void
		{
			//删除节点操作的实现，需要遍历Vector
			for(var i:int = this._item.length-1;i >= 0; i-- )	
			{
				if(this._item[i].getName() == component.getName())
					this._item.splice(i,1);
			}
		}
		
		public function getName():String
		{
			return this._name;
		}
		
		public function getUrl():String
		{
			return "";
		}
		
		/**
		 * 参数depth表示深度，默认为0
		 * */
		public function display(depth:int=0):void
		{
			//生成标识偏移量的字符
			var str:String = "";
			for (var i:int = 0; i < depth;i++)
				str += "-";
				
			trace(str + this._name);
			
			for each(var item:IMenuComponent in this._item)
				//trace(item.display(depth + 2)); //幼稚的错误
				item.display(depth + 2); 
		}
	}
}