        use ects;	
	
		##province
		
		alter table province add foreign key(country_id) references country(country_id);
		

		##ContcatInfo
		
		alter table ContcatInfo 
		add foreign key(contcatinfo_id) references user(user_id);
		
		
		
		alter table ContcatInfo 
		add foreign key(country_id) references country(country_id);
		
		alter table ContcatInfo 
		add foreign key(province_id) references province(province_id);
		
	
		##product
		alter table product 
		add foreign key(category_id) references category(category_id);
		
		
		##myOrder
		alter table myOrder 
		add foreign key(user_id) references user(user_id);
		
		alter table myOrder 
		add foreign key(payWay_id) references payWay(payWay_id);
		
		alter table myOrder 
		add foreign key(orderStatus_id) references orderStatus(orderStatus_id);
		
		
		##orderline
		alter table orderline 
		add foreign key(product_id) references product(product_id);
		
		alter table orderline 
		add foreign key(order_id) references myorder(order_id);
		
		

	
		
		
		
		
		
		
		

