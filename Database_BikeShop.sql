create database BikeShop character set utf8mb4 collate utf8mb4_unicode_ci; # criando banco de dados no padrão utf
use Bikeshop; # selecionando o banco de dados
use BikeShop;

## criando as tabelas e configurando os atributos.
create table Acc_Typ_Cd_LU_Tab(
Acc_Code int auto_increment, 
Account_Type varchar(50),
primary key(Acc_Code) );

drop table Acc_Typ_Cd_LU_Tab;
create table Acc_Typ_Cd_LU_Tab(
Acc_Code int auto_increment, 
Account_Type varchar(50) not null,
primary key(Acc_Code) );

create table Customer(
Customer_ID int auto_increment not null,
Customer_Lname varchar(50) not null,
Customer_Fname varchar(18) not null,
Cust_Street varchar(50) not null,
Cust_City varchar(50) not null,
Cust_zip int(5),
Cust_Phone varchar(20) not null,
Fax_Phone varchar(20),
primary key(Customer_ID)
);

create table State_Ikup(
St_Code int auto_increment not null,
State_name varchar(30) not null,
primary key(St_Code)
);

create table Supplier(
Supplier_ID int auto_increment,
Suplier_name varchar(50) not null,
Sup_street varchar(50) not null,
Sup_city varchar(30) not null,
St_Code varchar(7),
Sup_zip int(5),
Sup_phone int not null, 
Sup_Fax varchar(20),
primary key(Supplier_ID)
);
create table Customer_Account(
Customer_ID int auto_increment not null,
Last_purch_dte date not null,
Last_pymt_dte date not null,
Last_acct_trans_dte date not null,
Acct_balance float not null,
primary key(Customer_ID)
);

create table Transaction_code(
Trans_code int not null,
Transaction_description varchar(50) not null,
primary key(Trans_code)
);

create table Customer_Acct_Hist1(
Customer_ID int auto_increment,
Trans_dte date not null,
Trans_code int not null,
Old_acct_balance float not null,
New_acct_balance float not null,
primary key(Customer_ID)
);	


create table Purchase_Order(
Seq_ID int auto_increment,
Purch_dte date not null,
Bar_code int not null,
Serial_num int not null,
Model_ID int not null,
Quantity float not null,
Price float not null,
primary key(Seq_ID)
);


create table Bike_Descripiton(
Model_ID int not null,
Model_name varchar(15),
Inv_price float not null,
Sale_price float not null,
Description varchar(50) not null,
primary key(Model_ID)
);

create table Bike_inventory(
Seq_ID int not null,
Serial_Number int not null,
Supplier_ID int not null,
inventory_dte date not null,
Model_ID int not null,
primary key(Seq_ID)
);

create table Parts_Inventory(
Bar_code int not null,
Part_name varchar(5),
Prt_description varchar(5),
Prt_cost float not null,
Prt_price float not null,
Quantity float not null,
primary key(Bar_code)
);











