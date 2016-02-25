package com.Bridge.Usage
{
	import com.Bridge.Shape.IShape;
	
	public class UsePrint implements IUsage
	{
		private var _iShape:IShape = null;
		
		public function UsePrint()
		{
		}
		
		public function setUsage(iShape:IShape):void
		{
			if(iShape)
				this._iShape = iShape;
			else
				this._iShape = null;
		}
		
		public function desc():String
		{
			return this._iShape.desc() + " for print";
		}
	}
}