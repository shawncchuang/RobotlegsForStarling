/**
 * Created by shawnhuang on 15-03-06.
 */
package controller {
import Services.IoneService;

import events.ContextEvent;

import org.robotlegs.starling.mvcs.Command;



public class GameCommand extends Command {

    [Inject]
    public var _oneService:IoneService;

    override  public  function execute():void {

        trace("GameCommand");
        _oneService.startGame();


    }
}
}
