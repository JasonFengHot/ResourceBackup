public class GameControl extends View implements Runnable{
	public int mIGameStatus = -1;
	public boolean mBLoop = false;
	public  GameControl(Context context){
		super(context);
	}
	public void initGame(){
		mBLoop = true;
		mIGameStatus = GameDefinition.Game_Logo;
		Thread t = new Thread(this);
		t.start();
	}
	protected void onDraw(Canvas canvas){
		switch(mIGameStatus){
			case GameDefinition.Game_Logo:
				break;
			case GameDefinition.Game_MainMenu:
				break;
			case GameDefinition.Game_Help:
				break;
			default:
				break;
		}
	}
	public void run(){
		while(mBLoop){
			try{
				Thread.sleep(500);
			}catch(Exception e){
				e.printStackTrace();
			}
			postInvalidate();
		}
	}
	boolean onKeyDown(int keyCode){
		switch(mIGameStatus){
			case GameDefinition.Game_Logo:
				break;
			case GameDefinition.Game_MainMenu:
				break;
			case GameDefinition.Game_Help:
				break;
			default:
				break;
		}
		return true;
	}
	boolean onKeyUp(int keyCode){
		return true;
	}
	public boolean onTouchEvent(MotionEvent event){
		int iAction = event.getAction();
		if(iAction == MotionEvent.ACTION_CANCEL){
			
		}else if(iAction == MotionEvent.ACTION_DOWN){
		}else if(iAction == MotionEvent.ACTION_MOVE){
		}
		int x = (int)event.getX();
		int y = (int)event.getY();
		switch(mIGameStatus){
			case GameDefinition.Game_Logo:
				break;
			case GameDefinition.Game_MainMenu:
				break;
			case GameDefinition.Game_Help:
				break;
			default:
				break;
		}
		return true;
	}
}

public abstract class GameObject{
	private String id = null;
	public String getId(){
		return id;
	}
	public void setId(String id){
		this.id = id;
	}
	public abstract void loadProperties(Vector v);
	public String toString(){
		return ("id="+id);
	}
}

public class GameObjectQueue extends Hashtable{
	private String id = null;
	public String getId(){
		return id;
	}
	public void setId(String id){
		this.id = id;
	}
	public Object find(String gameObjectId){
		if(this.containsKey(gameObjectId)){
			return this.get(gameObjectId);
		}else{
			return null;
		}
	}
	public Object[] list(){
		Object[] result = new Object[this.size()];
		Enumeration enumer = this.elements();
		int i = 0;
		while(enumer.hasMoreElements()){
			result[i++] = enumer.nextElements();
		}
		return result;
	}
}

public class SimpleLayer extends GameObject{
	public static int WALKARENA = 1;
	public static int NO_WALKARENA = 2;
	@get
	private int[] mapData = null;
	@get
	private int tileWidth = 0;
	@get
	private int tileHeight = 0;
	@get
	private int tileCols = 0;
	@get
	private int tileRows = 0;
	@get,set
	private TiledLayer layer = null;
	@get
	private int type = 0;
	@get
	private String imageURL = null;
	public SimpleLayer(){
		super();
	}
	private int[] StringToIntArray(String s){
		s = StringExtension.removeToken(s,new String[]{"\t"," ","\r","\n"});
		Object[] objArr = StringExtension.split(new StringBuffer(s),",",StringExtension.INTEGER_ARRAY,false);
		return StringExtension.objectArrayBatchToIntArray(objArr);
	}
	public void loadProperties(Vector v){
		this.setId((String)v.elementAt(0));
		this.tileWidth = Integer.parseInt((String)v.elementAt(1));
		this.tileHeight = Integer.parseInt((String)v.elementAt(2));
		this.tileCols = Integer.parseInt((String)v.elementAt(3));
		this.tileRows = Integer.parseInt((String)v.elementAt(4));
		this.type = Integer.parseInt((String)v.elementAt(5));
		this.imgURL = (String)v.elementAt(6);
		this.mapData = StringToIntArray((String)v.elementAt(7));
	}
	public TiledLayer getLayer(){
		return layer;
	}
}

public class SimpleMap extends GameObject{
	@get,set
	private GameObjectQueue layerSet = null;	//图层集合
	@get,set
	private GameObjectQueue npcSet = null;		//NPC集合
	@get,set
	private GameObjectQueue mapLink = null;		//连接器集合
	@get
	private int width = 0;						//地图宽度
	@get
	private int height = 0;						//地图高度
	@get
	private String name = null;					//地图名称
	public SimpleMap(){
		super();
	}
	@Override
	public void loadProperties(Vector v){
		this.setId((String)v.elementAt(0));
		this.name = (String)v.elementAt(1);
		this.width = Integer.parseInt((String)v.elementAt(2));
		this.height = Integer.parseInt((String)v.elementAt(3));
	}
	public String toString(){...}
}

//这里的Sprite类在什么地方？？？
public class Animator extends Sprite{
	private Calculagraph cal = null;
	public Animator(Bitmap img,int frameWidth,int frameHeight,int loopTime)
}
