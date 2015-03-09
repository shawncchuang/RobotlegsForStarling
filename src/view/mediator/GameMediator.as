/**
 * Created by shawnhuang on 15-03-06.
 */
package view.mediator {
import events.ContextEvent;
import events.TextureEvent;

import model.TextureModel;

import org.robotlegs.starling.mvcs.Mediator;

import starling.events.Event;

import view.Game;

public class GameMediator extends Mediator {

    [Inject]
    public var game:Game;


    override public function onRegister():void {


        this.addContextListener(ContextEvent.INIT_GAME,onInit);
        this.addContextListener(ContextEvent.ADD_TEXTFIELD,onAddTextField);
    }

    private function onInit(e:Event):void {
        trace("GameMeditor.onInit");


    }
    private function onAddTextField(e:Event):void{

        trace("GameMeditor.onAddTextField");
        this.game.addTextField();

        //contextView.removeChild(game);


    }

}
}
