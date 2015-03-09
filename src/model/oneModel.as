/**
 * Created by shawnhuang on 15-03-05.
 */
package model {
import org.robotlegs.starling.mvcs.Actor;

public class oneModel extends Actor{

    private var _log:String = "oneModel";

    public function oneModel() {
    }

    public function get getLog():String{

        return this._log;
    }
}
}
