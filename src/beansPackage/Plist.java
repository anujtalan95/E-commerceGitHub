package beansPackage;

public class Plist {
	
	public Plist(String title,String descrip,String catg,int price,int stock)
	{
		this.setTitle(title);
		this.setDescrip(descrip);
		this.setCatg(catg);
		this.setPrice(price);
		this.setStock(stock);
	}
	
    public Plist(){
		
	}
    
	private String title;
	private String descrip;
	private String catg;
	private int price;
	private int stock;
	
	public void setTitle(String title){
		this.title=title;
	}
	public String getTitle(){
		return title;
	}
	
	public void setDescrip(String descrip){
		this.descrip=descrip;
	}
	public String getDescrip(){
		return descrip;
	}
	
	public void setCatg(String catg){
		this.catg=catg;
	}
	public String getCatg(){
		return catg;
	}
	
	public void setPrice(int price){
		this.price=price;
	}
	public int getPrice(){
		return price;
	}
	
	public void setStock(int stock){
		this.stock=stock;
	}
	public int getStock(){
		return stock;
	}

}
