/**
 * Created by shawnhuang on 15-03-05.
 */
package Services {
import events.ContextEvent;
import events.ReflashDataEvent;

import org.robotlegs.starling.mvcs.Actor;

public class oneService extends Actor implements IoneService{

    private var _isActive:Boolean = false;
    public function oneService() {
    }

    public function  get isActive():Boolean {

        return this._isActive;
    }
    public function loadData():void {

        trace("oneService.loadData");
        this.dispatchWith(ReflashDataEvent.REFLASH_DATA);
    }

    public function submitData():void{

        trace("oneService.submitData");
    }

    public function startGame():void {

       trace("oneService.startGame");
        this.dispatchWith(ContextEvent.ADD_TEXTFIELD);



    }
}
}
