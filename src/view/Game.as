/**
 * Created by shawnhuang on 15-03-04.
 */
package view {


import events.ContextEvent;

import flash.utils.setTimeout;

import  starling.display.Sprite;
import starling.text.TextField;

import view.mediator.GameMediator;


public class Game extends Sprite{


    public function Game():void{

        trace("Game");


    }
    public function addTextField():void {
        trace("Game.init");

        var text:TextField = new TextField(200,50,"Text","Verdana",20,0xFFFFFF);
        text.x = 0 ;
        text.y = 200;
        addChild(text);



    }

}
}
