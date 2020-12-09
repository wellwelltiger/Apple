package com.tjoeun.spring.beans;

public class CartDTO {
		private int cart_id;
		private String user_id;
		private String user_name;
		private int product_id;
		private String product_name;
		private int product_price;
		private int money;
		private int amount;
		private String product_img;
		
		
		public int getCart_id() {
			return cart_id;
		}
		public void setCart_id(int cart_id) {
			this.cart_id = cart_id;
		}
		public String getUser_id() {
			return user_id;
		}
		public void setUser_id(String user_id) {
			this.user_id = user_id;
		}
		public String getUser_name() {
			return user_name;
		}
		public void setUser_name(String user_name) {
			this.user_name = user_name;
		}
		public int getProduct_id() {
			return product_id;
		}
		public void setProduct_id(int product_id) {
			this.product_id = product_id;
		}
		public String getProduct_name() {
			return product_name;
		}
		public void setProduct_name(String product_name) {
			this.product_name = product_name;
		}
		public int getProduct_price() {
			return product_price;
		}
		public void setProduct_price(int product_price) {
			this.product_price = product_price;
		}
		public int getMoney() {
			return money;
		}
		public void setMoney(int money) {
			this.money = money;
		}
		public int getAmount() {
			return amount;
		}
		public void setAmount(int amount) {
			this.amount = amount;
		}
		
		
		
		public String getProduct_img() {
			return product_img;
		}
		public void setProduct_img(String product_img) {
			this.product_img = product_img;
		}
		@Override
	    public String toString() {
	        return "CartDTO [cart_id=" + cart_id + ", user_id=" + user_id + ", user_name=" + user_name + ", product_id=" + product_id
	                + ", product_name=" + product_name + ", product_price=" + product_price + ", money=" + money + ", amount=" + amount +",product_img="+product_img+ "]";
	    }
		
		
}
