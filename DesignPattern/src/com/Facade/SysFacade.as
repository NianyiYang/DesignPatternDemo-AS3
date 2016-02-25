package com.Facade
{
	import com.Facade.SubSystem.SubOne;
	import com.Facade.SubSystem.SubThree;
	import com.Facade.SubSystem.SubTwo;

	/**
	 * 外观模式属于事后模式，一般在接手一个复杂的老系统时使用
	 * 新系统在使用旧系统时只需要面向接口，最大程度降低耦合
	 * */
	public class SysFacade
	{
		/**
		 * 三个子系统的实例声明
		 * */
		private var subOne:SubOne = null;
		private var subTwo:SubTwo = null;
		private var subThree:SubThree = null;
		
		public function SysFacade()
		{
			this.subOne = new SubOne();
			this.subTwo = new SubTwo();
			this.subThree = new SubThree();
		}
		
		/**
		 * 接口方法 vaild
		 * */
		public function vaild():void
		{
			this.subOne.vaild();
			this.subTwo.vaild();
			this.subThree.vaild();
		}
		
		/**
		 * 接口方法save
		 * */
		public function save():void
		{
			this.subOne.saveOne();
			this.subTwo.saveTwo();
			this.subThree.saveThree();
		}
		
		/**
		 * 自定义接口方法 vaild and save two
		 * */
		public function vaildAndSaveTwo():void
		{
			this.subTwo.vaild();
			this.subTwo.saveTwo();
		}
	}
}