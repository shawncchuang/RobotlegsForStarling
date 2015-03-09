/**
 * Created by shawnhuang on 15-03-05.
 */
package controller {

import Services.IoneService;


import org.robotlegs.starling.mvcs.Command;

public class StartupCommand extends Command {

    [Inject]
    public var _oneService:IoneService;


    override  public function execute():void{

        this._oneService.loadData();

    }
}
}
