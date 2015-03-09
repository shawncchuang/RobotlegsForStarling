/**
 * Created by shawnhuang on 15-03-04.
 */
package view{


import events.ContextEvent;
import events.TextureEvent;

import starling.events.Event;
import starling.display.Sprite;

public class Startup extends Sprite {

    private var _context:MainContext;
    public function Startup() {

      this.addEventListener(Event.ADDED_TO_STAGE, onAddedStageHandle);

    }

    private function  onAddedStageHandle(e:Event):void{

        trace("Startup added stage");
        this._context = new MainContext(this);

    }
    public function init():void{

        trace("Startup.init");
        var game:Game = new Game();
        addChild(game);

    }



}
}
