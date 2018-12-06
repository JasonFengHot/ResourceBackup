public interface MemoryConsumer{
	public void createArray();
	public void createHashMap();
}

public class MemoConsumerImpl implements MemoryConsumer{
	private ArrayList arr = null;
	private HashMap hash = null;
	public void createArray(){
		arr = new ArrayList(1000);
	}
	public void createHashMap(){
		hash = new HashMap(1000);
	}
}

public class Memory{
	public static long used(){
		long total = Runtime.getRuntime().totalMemory();
		long free = Runtime.getRuntime().freeMemory();
		return (totao - free);
	}
}

public class Handler implements InvocationHandler{
	private Object obj;
	public Handler(Object obj){
		this.obj = obj;
	}
	public static Object newInstance(Object obj){
		Object result = Proxy.newProxyInstance(obj.getClass().getClassLoader(),obj.getClass().getInterfaces(),new Handler(obj));
		return result;
	}
	public Object invoke(Object proxy,Method method,Object[] args) throws Throwable{
		Object result;
		try{
			long start = Memory.used();
			result = method.invoke(obj,args);
			long end = Memory.used();
			Log.e("zhangqi",method.getName()+" test spend:"+(end - start)+" bytes");
		}catch(Exception e){
			e.printStaceTrace();
		}
	}
}

try{
	MemoryConsumer arrayMemo = (MemoryConsumer)Handler.newInstance(new MemoConsumerImpl());
	arrayMemo.createArray();
	arrayMemo.createHashMap();
}catch(Exception e){
	e.printStackTrace();
}
