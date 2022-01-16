package {
import com.airhttp.*;
import flash.desktop.NativeApplication;
import flash.display.*;
import flash.net.URLVariables;

public class ctl extends com.airhttp.ActionController
{
	private var _theApp:Object;
	public static var awin:NativeWindow;
	public static var ktx:MovieClip;
	public static var neuload:String=null;
      
      public function ctl(theApp:Object)
      {
        super('/v');
        //_theApp = theApp;
      }
	  
	  
	  
	  
	public function exit(params:Array):String
	{
		
		NativeApplication.nativeApplication.exit();
		return responseSuccess("<h1>exit</h1>");
	}

	public function rnd(params:Array):String
	{
		neuload=aniz[Math.floor( Math.random() * 162 )];
		return responseSuccess("<h1>rndm</h1>");
	}
	public function ani(params:Array):String
	{

		
		if (params.length>1) {
			var scc:MovieClip =ktx.getChildByName("bsmm") as MovieClip;
			scc = scc.scenes[0];
			switch(params[1].charAt(0))
			{
				case 'p':
					scc.play();
				break;
				case 's':
					scc.stop();
				break;
				case 'b':
					scc.prevFrame();
				break;
				case 'f':
					scc.nextFrame();
				break;
				default:
				break;
			}
			return responseSuccess("<h1>playctrl</h1>");
		}

		return responseSuccess("<h1>noctrl</h1>");
	}
	  
	public function move(params:Array):String
	{

		
		var mvx:Number;
		var paraml:uint=params.length;
		for(var i:uint = 0; i < paraml; i+=2)
		{
			switch(params[i])
			{
				case 'n':
				neuload=params[i+1];
				return responseSuccess("<h1>Load</h1>");

				case 'x':
					mvx=parseInt(params[i+1]);
					ktx.x+=mvx;
				break;
				case 'y':
					mvx=parseInt(params[i+1]);
					ktx.y+=mvx;
				break;
				case 'wx':
					mvx=parseInt(params[i+1]);
					NativeApplication.nativeApplication.activeWindow.x = mvx;
				break;
				case 'wy':
					mvx=parseInt(params[i+1]);
					NativeApplication.nativeApplication.activeWindow.y = mvx;
				break;
				case 'a':
					mvx=parseFloat(params[i+1]);
					ktx.alpha=mvx;
				break;

				case 's':
					mvx=parseFloat(params[i+1]);
					ktx.scaleX=mvx;
					ktx.scaleY=mvx;
				break;

				case 'o':
					mvx=parseFloat(params[i+1]);
					ktx.rotation=mvx;
				break;
				
				default:
				break;
			}

		}



			
		return responseSuccess("<h1>Move</h1>");
	}
	  
	  
      
     
	public static var aniz:Array = ['8823','9312','8976','552r8319','9247','14195','8913','9279','9140','10833mizu','9093','12599','14863','9169','6200','10153','1677','9171','14037','4377','5947','15526','4575','9053','6584','16538','6499','4199','8460','3751','15889','9314','385','11147','9102','10482','4937','9833','8950','13596','9213','9079','16901','866','8928','771','8967','2756','12294','9223','8870','5093','15387','9237','11284','6416','9318','16921','9026','16929','9316','9301','9297','552','9133','1524','9191','8676','3604','2403','12140','9259','8914','9118','5400','3382','9324','8852','9204','7848','13429','9531','9303','9307','12447','4470','6897','5861','7471','4770','15685','9020','11949','16365','16986','2553','13755','12986','1338','4048','15240','12670r9990','2173','3048','8884','11470','2032','13884','12843','9111','7149','5294','14558','8940','3901','5731','14705','12670','4658','12103','16235','7688','6754','8154','8031','9688','1228','6052','10645','10970','5553','10333','11786','8957','9305','8859','188','13278','9025','3189','9065','8983','9072','8997','9141','9292','1779','9038','8998','1049','8990','16058','8895','8841static','15093','4235','9272','13127','10811','6997','14378','7328'];
 }
}