/**
 * Created by shawnhuang on 15-03-05.
 */
package view.mediator {

import events.ReflashDataEvent;

import model.TextureModel;

import starling.events.Event;
import starling.textures.Texture;
import starling.display.Image;
import org.robotlegs.starling.mvcs.Mediator;
import events.ContextEvent;

import view.Startup;

public class MainMediator extends Mediator {

    [Inject]
    public var startup:Startup;

    [Inject]
    public  var _textureModel:TextureModel;

    override  public function onRegister():void {

        this.addContextListener(ReflashDataEvent.REFLASH_DATA,reflash_data_complete);


    }
    private  function reflash_data_complete(e:Event):void {

        this.startup.init();

        _textureModel.setTextureName("Robotlegs");
        var texture:Texture = _textureModel.getTexture;
        var image:Image = new Image(texture);
        contextView.addChild(image);

        this.dispatchWith(ContextEvent.INIT_GAME);

    }

}
}
