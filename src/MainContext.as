/**
 * Created by shawnhuang on 15-03-05.
 */
package {

import Services.IoneService;
import Services.oneService;

import controller.GameCommand;
import controller.ReflashDataCompleteCommand;
import controller.ShutDownCommand;
import controller.StartupCommand;
import controller.TextFieldViewCommand;


import events.ContextEvent;
import events.ReflashDataEvent;

import model.TextureModel;

import model.oneModel;

import org.robotlegs.starling.base.ContextEventType;
import org.robotlegs.starling.core.IInjector;
import org.robotlegs.starling.mvcs.Context;

import starling.display.DisplayObjectContainer;

import view.Game;
import view.Startup;
import view.mediator.GameMediator;
import view.mediator.MainMediator;


public class MainContext extends Context {
    public function MainContext(contextView:DisplayObjectContainer) {

        super(contextView);
    }

    override  protected function get injector():IInjector{
        return super.injector;
    }

    override protected  function  set injector(value:IInjector):void{

        super.injector = value;

    }

    override  public function startup():void{


        this.commandMap.mapEvent(ContextEventType.STARTUP,StartupCommand);
        this.commandMap.mapEvent(ReflashDataEvent.REFLASH_DATA,ReflashDataCompleteCommand);
        this.commandMap.mapEvent(ContextEvent.INIT_GAME,GameCommand);
        this.commandMap.mapEvent(ContextEvent.ADD_TEXTFIELD,TextFieldViewCommand);
        this.commandMap.mapEvent(ContextEvent.SHUTDOWN,ShutDownCommand);


        this.injector.mapSingleton(oneModel);
        this.injector.mapSingletonOf(IoneService,oneService);

        this.injector.mapSingleton(TextureModel);


        this.mediatorMap.mapView(Startup,MainMediator);
        this.mediatorMap.mapView(Game,GameMediator);


        this.dispatchEventWith(ContextEventType.STARTUP);



        super.startup();
    }
}
}
