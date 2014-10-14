package action;

public class test {

	public static void main(String[] args) {
		DaoCon con = new DaoCon();
		if(con!=null){
			System.out.println("hello");
		}else
			System.out.println("bab");
		book b = new book();
		b.setAuthor("Jane Austen");
		b.execute();
		System.out.print(b.getAge());
	}
	
}
