package
{
	import com.AbstractFactory.Factory.IProductFactory;
	import com.AbstractFactory.Factory.ProductFactoryA;
	import com.AbstractFactory.Factory.ProductFactoryB;
	import com.AbstractFactory.Factory.ProductFactoryC;
	import com.AbstractFactory.Factory.ProductFactoryD;
	import com.AbstractFactory.Person.IPerson;
	import com.AbstractFactory.Sport.ISport;
	import com.Adapter.ClassAdapter.ClassAdapter;
	import com.Adapter.ObjectAdapter.ObjectAdaptee;
	import com.Adapter.ObjectAdapter.ObjectAdapter;
	import com.Bridge.Color.ColorBlue;
	import com.Bridge.Color.ColorGrey;
	import com.Bridge.Color.ColorRed;
	import com.Bridge.Shape.MyEclipse;
	import com.Bridge.Shape.MyRectangle;
	import com.Bridge.Usage.UseDraw;
	import com.Bridge.Usage.UsePrint;
	import com.Builder.BuilderProduct;
	import com.Builder.ConcreteBuilderA;
	import com.Builder.ConcreteBuilderB;
	import com.Builder.Director;
	import com.Builder.IBuilder;
	import com.Command.AudioInvoker;
	import com.Command.AudioPlayer;
	import com.Command.PauseCommand;
	import com.Command.PlayCommand;
	import com.Command.StopCommand;
	import com.Composite.ItemComposite;
	import com.Composite.SubMenuComposite;
	import com.Decorator.AmazingHouse;
	import com.Decorator.DecoratorGlass;
	import com.Decorator.DecoratorPaint;
	import com.Decorator.IHouseComponent;
	import com.Facade.SysFacade;
	import com.FactoryMethod.BMWFactory;
	import com.FactoryMethod.Benz1Factory;
	import com.FactoryMethod.ICar;
	import com.Flyweight.CharFlyweight;
	import com.Flyweight.FlyweightFactory;
	import com.Flyweight.IFlyweight;
	import com.Iterator.ConcreteAggregate;
	import com.Iterator.IAggregate;
	import com.Iterator.IIterator;
	import com.Mediator.ColleagueOne;
	import com.Mediator.Mediator;
	import com.Observer.Observer.ConcreteObserver;
	import com.Observer.Observer.IObserver;
	import com.Observer.Subject.ConcreteSubject;
	import com.Prototype.ConcretePrototype;
	import com.Proxy.DynamicProxy.DynamicProxy;
	import com.Proxy.StaticProxy.DataAccessProxy;
	import com.Singleton.Singleton1;
	import com.Singleton.Singleton2;
	import com.StaticFactory.BenzFactory;
	import com.StaticFactory.IBenz;
	
	import flash.display.Sprite;
	
	public class DesignPattern extends Sprite
	{
		private var _sprite:Sprite;
		
		public function DesignPattern()
		{
			//Test();
			//Test2();
			//Test3();
			//Test4();
			//Test5();
			//Test6();
			//Test7();
			//Test8();
			//Test9();
			//Test10();
			//Test11();
			//Test12();
			//Test13();
			//Test14();
			//Test15();
			//Test16();
			//Test17();
			//Test18();
			//Test19();
			Test20();
		}
		
		private function Test():void
		{
			var s:IBenz = BenzFactory.CreateInstance("BenzSLK");
			s.SetPrice("100W");
			var c:IBenz = BenzFactory.CreateInstance("BenzCLK");
			c.SetPrice("50w");
		}
		
		private function Test2():void
		{
			var bmw:ICar = new BMWFactory().Instance();
			bmw.SetPrice("50W");
			var benz:ICar = new Benz1Factory().Instance();
			benz.SetPrice("150W");
		}
		
		private function Test3():void
		{
			// 打印抽象工厂方法产品线生产的四种产品
			var factoryA:IProductFactory = new ProductFactoryA();
			var personA:IPerson = factoryA.PersonInstance();
			var sportA:ISport = factoryA.SportInstance();
			trace(personA.PrintName() + "," + sportA.SetSport());
			
			var factoryB:IProductFactory = new ProductFactoryB();
			var personB:IPerson = factoryB.PersonInstance();
			var sportB:ISport = factoryB.SportInstance();
			trace(personB.PrintName() + "," + sportB.SetSport());
			
			var factoryC:IProductFactory = new ProductFactoryC();
			var personC:IPerson = factoryC.PersonInstance();
			var sportC:ISport = factoryC.SportInstance();
			trace(personC.PrintName() + "," + sportC.SetSport());
			
			var factoryD:IProductFactory = new ProductFactoryD();
			var personD:IPerson = factoryD.PersonInstance();
			var sportD:ISport = factoryD.SportInstance();
			trace(personD.PrintName() + "," + sportD.SetSport());
		}
		
		private function Test4():void
		{
			//使用getInstance方法确保每次调用同一实例
			var a:Singleton1 = Singleton1.getInstance();
			a.data = "get the instance and set data as a";
			trace(a.description() + "," + a.data);
			
			var b:Singleton1 = Singleton1.getInstance();
			b.data = "get the instance and set data as b";
			trace(b.description() + "," + b.data);
		}
		
		private function Test5():void
		{
			//使用getInstance方法确保每次调用同一实例
			var a:Singleton2 = Singleton2.getInstance();
			a.data = "get the instance and set data as a";
			trace(a.description() + "," + a.data);
			
			var b:Singleton2 = Singleton2.getInstance();
			b.data = "get the instance and set data as b";
			trace(b.description() + "," + b.data);
		}
		
		private function Test6():void
		{
			//实例化指导者
			var director:Director = new Director();
			//实例化建造者，如果建造者有多种则可以实例化多种
			var builderA:IBuilder = new ConcreteBuilderA();
			var builderB:IBuilder = new ConcreteBuilderB();
			
			//一，指导者开始指导建造者如何建造产品
			//二，建造者通过指导，建造完成产品。产品在建造者的构造函数中已经被实例化
			//	  并通过getProduct方法传给product实现实例化
			//三，调用输出函数，将结果打印出来
			director.BuildProduct(builderA);
			var productA:BuilderProduct = builderA.getProduct();	
			trace(productA.show());
			
			director.BuildProduct(builderB);
			var productB:BuilderProduct = builderB.getProduct();
			trace(productB.show());
		}
		
		private function Test7():void
		{
			var prototype1:ConcretePrototype = new ConcretePrototype();
			prototype1.data = "this is prototype1";

			//在实例化时，调用了构造函数
			var prototype2:ConcretePrototype = prototype1.clone() as ConcretePrototype; 
			prototype2.data = "this is prototype2";
			
			trace(prototype1.data);
			trace(prototype2.data);	
		}
		
		private function Test8():void
		{ 
			//一般来说，适配器模式经常用在需要第三方API协同工作的场合
			//类适配器
			var cAdapter:ClassAdapter = new ClassAdapter();
			trace(cAdapter.funcOne());
			trace(cAdapter.funcTwo());
		}
		
		private function Test9():void
		{
			//对象型适配器，先实例化源接口
			var oAdaptee:ObjectAdaptee = new ObjectAdaptee();
			var oAdapter:ObjectAdapter = new ObjectAdapter(oAdaptee);
			trace(oAdapter.funcOne());
			trace(oAdapter.funcTwo());
		}
		
		private function Test10():void
		{
			//使用桥接模式实现任意维度的任意组合，并可以任意新增维度
			//需要注意的是维度与维度之间如果没有可以正确识别的接口，则不能组合
			
			//维度一 颜色
			var cGrey:ColorGrey = new ColorGrey();
			var cRed:ColorRed = new ColorRed();
			var cBlue:ColorBlue = new ColorBlue();
			//维度二 形状
			var mEclipse:MyEclipse = new MyEclipse();
			var mRectangle:MyRectangle = new MyRectangle();
			//维度三 用途
			var uPrint:UsePrint = new UsePrint();
			var uDraw:UseDraw = new UseDraw();
			
			//例子一 三维组合  灰色椭圆用于打印
			mRectangle.setColor(cGrey);
			uPrint.setUsage(mRectangle);
			trace(uPrint.desc());
			
			//例子二 二维组合 方形用于画图
			mRectangle.setColor(null);
			uDraw.setUsage(mRectangle);
			trace(uDraw.desc());
			
			//例子三 二维组合 红色椭圆
			mEclipse.setColor(cRed);
			trace(mEclipse.desc());
		}
		
		private function Test11():void
		{
			//使用组合模式实现树形菜单
			//在增加时的先后顺序与显示结果是有关系的
			var mainMenu:SubMenuComposite = new SubMenuComposite("MainMenu");
			var subMenu1:SubMenuComposite = new SubMenuComposite("SubMenu1");
			var subMenu2:SubMenuComposite = new SubMenuComposite("SubMenu2");
			var subMenu3:SubMenuComposite = new SubMenuComposite("SubMenu3");
			
			var item1:ItemComposite = new ItemComposite("Item1","One");
			var item2:ItemComposite = new ItemComposite("Item2","Two");
			var item3:ItemComposite = new ItemComposite("Item3","Three");
			var item4:ItemComposite = new ItemComposite("Item4","Four");
			
			//增加叶子节点到目录
			subMenu1.add(item1);
			subMenu1.add(item2);
			subMenu1.add(item3);
			subMenu1.add(item4);
			
			//删除叶子节点
			subMenu1.remove(item3);
			subMenu1.remove(item4);
			
			subMenu2.add(item3);
			
			subMenu3.add(item4);
			
			//将子目录3加到子目录2下面
			subMenu2.add(subMenu3);
			
			//将子目录1和子目录2加到根目录下
			mainMenu.add(subMenu1);
			mainMenu.add(subMenu2);
			
			//目录添加完毕，展示
			mainMenu.display();
		}
	
		private function Test12():void
		{
			//首先实例化被装饰的对象
			var amazingHouse:IHouseComponent = new AmazingHouse();
			//装饰器对象一
			var decoratorPaint:DecoratorPaint = new DecoratorPaint(amazingHouse);
			//装饰器对象二
			var decoratorGlass:DecoratorGlass = new DecoratorGlass(amazingHouse);
			//也可以将装饰器对象直接用在另一个装饰器对象上，以达到多重装饰的效果
			var decoratorAll:DecoratorGlass = new DecoratorGlass(decoratorPaint);
			
			trace("--- Before ---");
			amazingHouse.show();
			trace("--- Before decorate ---");
			decoratorPaint.show();
			trace("--- After decorate ---");
			decoratorGlass.show();
			trace("--- All decorate ---");
			decoratorAll.show();
			trace("--- The original object still like that ---");
			amazingHouse.show();
		}
		
		private function Test13():void
		{
			//外观模式，最易懂的设计模式之一，调用外观类Facade中的接口
			//可以屏蔽子系统具体实现，分离新旧系统
			//你也可以直接调用子系统中的接口，但是为了减少耦合还是建议不要这么做
			//缺点：增加新的子系统可能会需要修改外观类Facade。解决：引入抽象外观类接口
			var sysFacade:SysFacade = new SysFacade();
			trace("--- vaild ---");
			sysFacade.vaild();
			trace("--- save ---");
			sysFacade.save();
			trace("--- vaild and save two ---");
			sysFacade.vaildAndSaveTwo();
		}
		
		private function Test14():void
		{
			//简单享元模式，将巨量细粒度的对象的共同点找出来，把这些有共同点的对象当作单个对象引用
			//如果细粒度对象巨量的情况下，可以极大减少系统的内存消耗
			var flyweightFactory:FlyweightFactory = new FlyweightFactory();
			var letters:String = "faehfashdjfkhsakasdjfahgihkashfiageygdajsbfcjhsafjsafjbasjhfkyaesfjs";
			for(var i:int = 0;i < letters.length; i++)
			{
				var flyweight:IFlyweight = flyweightFactory.getFlyweight(letters.charAt(i)) as CharFlyweight;
				var randomNum:int = Math.round(Math.random()*(101-1))+1;//产生1-100的随机数
				flyweight.setPosition(randomNum,randomNum);
				trace(flyweight.show());
			}
			flyweightFactory.getNumber();			
		}
		
		private function Test15():void
		{
			//静态代理模式
			var daProxy:DataAccessProxy = new DataAccessProxy();
			daProxy.Select();
			daProxy.Delete();
			daProxy.Update();
			daProxy.Insert();
		}
		
		private function Test16():void
		{
			//动态代理模式使用了Java中的反射技术，即在用户想操作具体类时，直接找到通用代理即可，不需要每一个具体类建立一个代理类
			//actionscript3.0中支持反射技术，但是是“伪”反射
			var oracleProxy:DynamicProxy = new DynamicProxy("com.Proxy.DynamicProxy.OracleAccess");
			oracleProxy.Select();
			oracleProxy.Delete();
			oracleProxy.Update();
			oracleProxy.Insert();
			
			var mysqlProxy:DynamicProxy = new DynamicProxy("com.Proxy.DynamicProxy.MySqlAccess");
			mysqlProxy.Select();
			mysqlProxy.Delete();
			mysqlProxy.Update();
			mysqlProxy.Insert();
		}
		
		private function Test17():void
		{
			//创建player对象
			var player:AudioPlayer = new AudioPlayer();
			//创建命令操作者对象
			var invoker:AudioInvoker = new AudioInvoker();
			
			//创建命令实体
			var commandPlay:PlayCommand = new PlayCommand(player);
			var commandPause:PauseCommand = new PauseCommand(player);
			var commandStop:StopCommand = new StopCommand(player);
			
			//依次执行命令
			invoker.addCommand(commandPlay);
			invoker.runCommand();
			
			invoker.addCommand(commandPause);
			invoker.runCommand();
			
			invoker.addCommand(commandStop);
			invoker.runCommand();
			
			//在stop后执行命令pause 不执行
			invoker.addCommand(commandPause);
			invoker.runCommand();
		}
		
		private function Test18():void
		{
			//迭代器 模式 不是很理解
			//封装性增强？
			var array:Array = new Array();
			array.push("one");
			array.push("two");
			array.push("three");
			
			//封装容器
			var ca:IAggregate = new ConcreteAggregate(array);
			var it:IIterator = ca.createIterator();
			
			//实现访问的方法，又不暴露内部结构
			trace(it.first().toString());
			trace(it.next().toString());
			trace(it.current().toString());
		}
		
		private function Test19():void
		{
			//声明中介器	
			var mediator:Mediator = new Mediator();
			
			//声明需要中介的同事类
			var colOne:ColleagueOne = new ColleagueOne("one",mediator);
			var colTwo:ColleagueOne = new ColleagueOne("two",mediator);
			
			//将同事类加入中介列表
			mediator.addColleague(colOne);
			mediator.addColleague(colTwo);
			
			//与中介类进行交互
			colOne.constact("test one");
			colTwo.constact("test two");
		}
		
		private function Test20():void
		{
			//创建主题对象
			var subject:ConcreteSubject = new ConcreteSubject();
			
			//创建观察者对象，注意声明时以接口名抽象声明
			var observer:IObserver = new ConcreteObserver();
			
			//添加监听
			subject.addListener(observer);
			subject.changeState("new state");
			
			//删除监听，可见改变主题状态后观察者已经观察不到主题改变了
			subject.removeListener(observer);
			subject.changeState("new state updated");
		}
	}
}