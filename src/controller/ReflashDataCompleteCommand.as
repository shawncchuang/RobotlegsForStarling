/**
 * Created by shawnhuang on 15-03-05.
 */
package controller {
import events.ContextEvent;

import model.TextureModel;
import model.oneModel;

import org.robotlegs.starling.mvcs.Command;

import starling.display.Image;

import starling.textures.Texture;

import view.Game;

public class ReflashDataCompleteCommand extends Command{

    [Inject]
    public var _oneModel:oneModel;

    //[Inject]
    //public var _textureModel:TextureModel;

    override  public  function execute():void {

        trace("ReflashDataCompleteCommand")
       var log:String =_oneModel.getLog;

        /*
        _textureModel.setTextureName("Robotlegs");
        var texture:Texture = _textureModel.getTexture;
        var image:Image = new Image(texture);

        var game:Game = new Game();
        game.addChild(image);
        contextView.addChild(game);
        */



    }

}
}
