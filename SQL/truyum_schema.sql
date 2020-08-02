/* insert menu into menu_item table            ----comments here----*/
insert into menu_items
values
(1, 'Sandwich', 99.00, 'Yes',  '2017-03-15', 'Main Course', 'Yes'),
(2, 'Burger', 129.00, 'Yes',  '2017-12-23', 'Main Course', 'No'),
(3, 'Pizza', 149.00, 'Yes',  '2017-08-21', 'Main Course', 'No'),
(4, 'French Fries', 57.00, 'No',  '2017-07-02', 'Starters', 'Yes'),
(5, 'Chocolate Brownie', 32.00, 'Yes',  '2022-11-02', 'Dessert', 'Yes');

/* displaying all menu items               ----comments here----*/

select * from menu_items;

/* 2.a. Frame SQL query to get all menu items which after launch date and is active.                       ----comments here----*/

select * from menu_items
	where menu_Active="Yes" and menu_date<=(current_date);
    
      /* 3.a. Frame SQL query to get a menu items based on Menu Item Id                                    ----comments here----*/
      
select * from menu_items
	where menu_id = "2";
    
    /* 3.b. Frame update SQL menu_items table to update all the columns values based on Menu Item Id       ----comments here----*/
    
   
update menu_items
set menu_name='vada',
menu_price=5.0,
menu_category='Starters'
where menu_id=4;    

 /* 4.a. Frame insert scripts for adding data into user and cart tables.In user table create two users. Once user will not have any entries in cart, while the other will have at least 3 items in the cart. */
/* ----comments here----*/
    
insert into user
values
(6, 'Pavan'),
(7, 'Naveen');

insert into cart
values 
(1,6,1),
(2,6,2),
(3,6,3);

 /* 5.a. Frame SQL query to get all menu items in a particular user’s cart                                   ----comments here----*/
 
select m.menu_name, m.menu_free_deliery, m.menu_price, m.menu_category
from menu_items m
inner join cart c on m.menu_id = c.menu_id
where c.user_id = 6; 

/* 5.b. Frame SQL query to get the total price of all menu items in a particular user’s cart                  ----comments here----*/

select sum(m.menu_price) as Total from menu_items m
inner join cart c on m.menu_id = c.menu_id
where c.user_id = 6; 

/* 6.a. Frame SQL query to remove a menu items from Cart based on User Id and Menu Item Id                     ----comments here----*/

delete from cart where cart_id='3' and menu_id=3; 
    
    
    