/**
 * Created by shawnhuang on 15-03-05.
 */
package model {
import org.robotlegs.starling.mvcs.Actor;

import starling.textures.Texture;
import flash.display.Bitmap;

public class TextureModel extends Actor {

    [Embed(source="../../assets/rl_justlegs.png")]
    public static const Robotlegs:Class;

    private var texture_name:String;
    public function setTextureName(name:String):void{

        this.texture_name= name;

    }

    public function get getTexture():Texture{

        trace("Texture.getTexture");
        var bitmap: Bitmap;
        switch(this.texture_name) {

            case "Robotlegs":

                bitmap = new Robotlegs();
                var texture:Texture =  Texture.fromBitmap(bitmap, true, false);
                break

        }

        return texture;
    }

}
}
