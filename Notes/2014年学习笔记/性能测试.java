public interface Testing{
    public void testArrayList();
    public void testLinkedList(); 
}

public class TestImpl implements Testing{
    private List link = new LinkedList();
    private List array = new ArrayList();
    public TestImpl(){
        for(int i = 0 ;i < 10000;i++){
            array.add(new Integer(i));
            link.add(new Integer(i));
        }
    }
    public void testArrayList(){
        for(int i=0;i<10000;i++){
            array.get(i);
        }
    }
    public void testlinkedList(){
        for(int i = 0;i<10000;i++){
            link.get(i);
        }
    }
}

public class Handler implements InvocationHandler{
    private Object obj;
    public Handler(Object obj){
        this.obj = obj;
    }
    public static Object newInstance(Object obj){
        //1.类加载器，2.实现的接口，3.此类的实例
        Object result = Proxy.newProxyInstance(obj.getClass().getClassLoader(), obj.getClass().getInterfaces(), new Handler(obj));
        return result;
    }
    public Object invoke(Object proxy,Method method,Object[] args) throws Throwable{
        Object result;
        try{
            long start = System.currentTimeMillis();    //调用方法之前
            result = method.invoke(obj,args);
            long end = System.currentTimeMillis();        //调用方法之后
            //在这里计算性能
        }catch(InvocationTargetException e){
            throw e.getTargetException();
        }catch(Exception e){
            throw new RuntimeException("unexpected invocation exception:"+e.getMessage());
        }finally{
            Log.e("Handler","end method " + method.getName());
        }
        return result;
    }
}


//测试
try{
    Testing testing = (Testing)Handler.newInstance(new TestingImpl());
    testing.testArrayList();    
    testing.testLinkedList();    
}catch(Exception e){
    e.printStackTrace();
}
