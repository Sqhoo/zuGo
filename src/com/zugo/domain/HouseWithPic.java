package com.zugo.domain;

import java.util.Date;
import java.util.List;

/**  
 * 类说明
 * @author xzz
 * @date 2018年7月25日下午5:20:52
 */
public class HouseWithPic {
	 private String house_id;
	    private String house_name;
	    private int house_area;
	    private double house_rent;
	    private String house_province;
	    private String house_city;
	    private String house_detailaddr;
	    private String house_desc;
	    private int house_status;
	    private String house_type;
	    private String user_id;
	    private Date publish_time;
	    private String  pic_path="";
	    
		public HouseWithPic(String house_id, String house_name, int house_area, double house_rent,
				String house_province, String house_city, String house_detailaddr, String house_desc, int house_status,
				String house_type, String user_id, Date publish_time, String pic_path) {
			super();
			this.house_id = house_id;
			this.house_name = house_name;
			this.house_area = house_area;
			this.house_rent = house_rent;
			this.house_province = house_province;
			this.house_city = house_city;
			this.house_detailaddr = house_detailaddr;
			this.house_desc = house_desc;
			this.house_status = house_status;
			this.house_type = house_type;
			this.user_id = user_id;
			this.publish_time = publish_time;
			this.pic_path = pic_path;
		}
		public HouseWithPic() {
			super();
			// TODO Auto-generated constructor stub
		}
		public String getHouse_id() {
			return house_id;
		}
		public void setHouse_id(String house_id) {
			this.house_id = house_id;
		}
		public String getHouse_name() {
			return house_name;
		}
		public void setHouse_name(String house_name) {
			this.house_name = house_name;
		}
		public int getHouse_area() {
			return house_area;
		}
		public void setHouse_area(int house_area) {
			this.house_area = house_area;
		}
		public double getHouse_rent() {
			return house_rent;
		}
		public void setHouse_rent(double house_rent) {
			this.house_rent = house_rent;
		}
		public String getHouse_province() {
			return house_province;
		}
		public void setHouse_province(String house_province) {
			this.house_province = house_province;
		}
		public String getHouse_city() {
			return house_city;
		}
		public void setHouse_city(String house_city) {
			this.house_city = house_city;
		}
		public String getHouse_detailaddr() {
			return house_detailaddr;
		}
		public void setHouse_detailaddr(String house_detailaddr) {
			this.house_detailaddr = house_detailaddr;
		}
		public String getHouse_desc() {
			return house_desc;
		}
		public void setHouse_desc(String house_desc) {
			this.house_desc = house_desc;
		}
		public int getHouse_status() {
			return house_status;
		}
		public void setHouse_status(int house_status) {
			this.house_status = house_status;
		}
		public String getHouse_type() {
			return house_type;
		}
		public void setHouse_type(String house_type) {
			this.house_type = house_type;
		}
		public String getUser_id() {
			return user_id;
		}
		public void setUser_id(String user_id) {
			this.user_id = user_id;
		}
		public Date getPublish_time() {
			return publish_time;
		}
		public void setPublish_time(Date publish_time) {
			this.publish_time = publish_time;
		}
		public String getPic_path() {
			return pic_path;
		}
		public void setPic_path(String pic_path) {
			this.pic_path = pic_path;
		}
	
	
		
		
}
