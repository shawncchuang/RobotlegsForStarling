package
{

import flash.display.MovieClip;
import flash.display.StageAlign;

import flash.events.Event;
import flash.events.ProgressEvent;
import flash.utils.getDefinitionByName;


[SWF(width="1024", height="768", frameRate="60", backgroundColor="#222222")]
public class Main extends MovieClip
{
    private const STARTUP_CLASS:String = "view.Startup";
    private static const PROGRESS_BAR_HEIGHT:Number = 40;
    private var _starling:Object;

    public function Main()
    {

        addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
        stop();
    }

    private function onAddedToStage(event:Event):void
    {
        //stage.scaleMode = StageScaleMode.SHOW_ALL;
        stage.align = StageAlign.TOP_LEFT;
        //we listen to ProgressEvent.PROGRESS to update the progress bar.
        this.loaderInfo.addEventListener(ProgressEvent.PROGRESS, loaderInfo_progressHandler);

        //we listen to Event.COMPLETE to know when the SWF is completely loaded.
        this.loaderInfo.addEventListener(Event.COMPLETE, loaderInfo_completeHandler);
    }

    private function loaderInfo_progressHandler(event:ProgressEvent):void
    {
        //this example draws a basic progress bar
        this.graphics.clear();
        this.graphics.beginFill(0xcccccc);
        this.graphics.drawRect(0, (this.stage.stageHeight - PROGRESS_BAR_HEIGHT) / 2,
                this.stage.stageWidth * event.bytesLoaded / event.bytesTotal, PROGRESS_BAR_HEIGHT);
        this.graphics.endFill();
    }


    private function loaderInfo_completeHandler(event:Event):void
    {

        this.graphics.clear();
        this.gotoAndStop(2);


        var RootType:Class = getDefinitionByName(STARTUP_CLASS) as Class;
        var StarlingType:Class = getDefinitionByName("starling.core.Starling") as Class;
        this._starling = new StarlingType(RootType, this.stage);
        this._starling.start();


    }


}
}