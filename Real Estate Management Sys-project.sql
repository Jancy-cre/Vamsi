create database RealEstate
use RealEstate
create table properties(
pro_id int auto_increment primary key not null,
pro_name varchar(40),
Procat_ID int not null,
Pro_location varchar(100) not null,
Agent_ID int not null, 
foreign key(Agent_ID)references agents(Agent_ID), 
foreign key(Procat_ID)references Property_category(Procat_ID)
);
alter table properties auto_increment=34;
create table property_category(
Procat_ID int auto_increment primary key not null,
Size_sqft int not null,
persqft int not null,
Bedrooms int, 
pro_status enum("Available", "Sold", "Pending") not null,
pro_type enum("Residential", "Commercial", "Industrial","land")not null
);
alter table property_category auto_increment=101;

create table agents(
Agent_ID int auto_increment primary key not null,
Ag_name varchar(30) not null,
Ag_add varchar(100),
email varchar(50),
phoneno varchar(13) not null
);
alter table agents auto_increment=201;

create table clients(
Client_ID int auto_increment primary key not null,
Cl_name varchar(30) not null,
Cl_add varchar(100),
email varchar(50),
phoneno varchar(13) not null
);
alter table clients auto_increment=301;
create table transaction_del(
trans_ID int auto_increment primary key not null,
pro_id int,
Agent_ID int,
Client_ID int,
trans_dt date,
trans_type enum("cash","cheque","online transfer") not null,
Sale_Amt decimal(8,2) not null,
foreign key(pro_id)references properties(pro_id),
foreign key(Agent_ID)references agents(Agent_ID),
foreign key(Client_ID)references clients(Client_ID)
);
alter table transaction_del auto_increment=500;

select*from properties;
select*from property_category;
select*from agents;
select*from clients;
select*from transaction_del;
insert into property_category(Size_sqft,persqft,Bedrooms,pro_status,pro_type)values
(3000,5500,2,"Available","Residential"),
(4534,5400,4,"Available","Residential"),
(1234,3000,0,"Available","land"),
(2345,1500,2,"Available","Residential"),
(1231,1800,3,"Sold","Industrial"),
(2353,1200,0,"Available","land"),
(589,1500,2,"Available","Residential"),
(7654,2000,4,"Pending","Commercial"),
(1236,1600,2,"Available","Residential"),
(2400,2200,0,"Sold","land"),
(800,1000,1,"Available","Residential"),
(1600,1400,2,"Sold","Residential"),
(5689,2500,4,"Pending","Commercial"),
(3456,1350,2,"Sold","Commercial"),
(3214,1700,3,"Available","Residential"),
(3456,1900,3,"Available","Residential"),
(1254,1450,2,"Sold","Residential"),
(2313,1250,0,"Available","land"),
(8000,2400,5,"Pending","Commercial"),
(6432,1550,2,"Pending","Commercial"),
(1234,2100,4,"Sold","Residential"),
(4321,1300,1,"Available","Residential"),
(1111,1800,3,"Sold","Residential"),
(930,1650,2,"Pending","Commercial"),
(3212,2300,4,"Available","Residential"),
(4321,1100,0,"Available","land"),
(2345,1500,2,"Sold","Residential"),
(6781,2600,5,"Available","Residential"),
(1234,1400,2,"Pending","Commercial"),
(1600,1750,3,"Sold","Residential"),
(1236,1950,3,"Available","Residential"),
(764,1475,2,"Sold","Residential"),
(900,1280,1,"Available","Residential"),
(4567,2450,0,"Available","land");
insert into properties(pro_name,Procat_ID,Pro_location,Agent_ID)values
("Lakeview Apartment",101,"123 Maple Street, Springfield",201),
("Sunset Villa",102,"456 Elm Street, Rivertown",202),
("Ocean Breeze Condo",103,"789 Pine Avenue, Seaview",203),
("Mountain Retreat",104,"321 Cedar Drive, Highlands",204),
("Urban Loft",105,"654 Birch Lane, Metropolis",205),
("Countryside Cottage",106,"987 Oak Road, Greenfield",206),
("Downtown Studio",107,"111 Willow Court, Capital City",207),
("Riverside Mansion",108,"222 Poplar Way, Rivertown",208),
("Beachside Bungalow",109,"333 Beachfront Blvd, Paradise Cove",209),
("Hilltop House",110,"444 Summit Road, Hillcrest",210),
("City Center Apartment",111,"555 Center Plaza, Urbania",211),
("Garden Villa",112,"666 Rosewood Lane, Floral City",212),
("Modern Penthouse",113,"777 Skyline Drive, Cosmopolis",213),
("Historic Townhouse",114,"888 Heritage Square, Oldtown",214),
("Forest Hideaway",115,"999 Evergreen Trail, Woodhaven",215),
("Luxury Condo",116,"1010 Fifth Avenue, Opulence City",216),
("Lakefront Cabin",117,"1212 Lakeview Drive, Laketown",217),
("Sunny Apartment",118,"1313 Sunshine Street, Sunnyside",218),
("Elegant Villa",119,"1414 Lavender Lane, Roseland",219),
("Chic Duplex",120,"1515 Modern Alley, Designville",220),
("Cozy Cottage",121,"1616 Serenity Path, Meadowland",221),
("Clifftop Retreat",122,"1717 Horizon Edge, Cliffside",222),
("Seaside Escape",123,"1818 Wavecrest Road, Oceanview",223),
("Downtown Flat",124,"1919 Commerce Street, Business Bay",224),
("Rustic Lodge",125,"2020 Timber Trail, Mountainville",225),
("Elegant Studio", 126,"2121 Art District, Culture City",226),
("Penthouse Suite",127,"2222 Luxury Lane, Skyline City",227),
("Family Villa",128,"2323 Cherry Blossom Drive, Suburbia",228),
("Charming Ranch",129,"2424 Meadow Road, Prairieville",229),
("Urban Suite",130,"2525 Tower Street, Metro Heights",230),
("Beach Retreat",131,"2626 Sand Dune Lane, Shoreline",231),
("Modern Townhouse",132,"2727 Park Avenue, Trendy Town",232),
("Quiet Bungalow",133,"2828 Whispering Lane, Tranquil Valley",233);

insert into agents(Ag_name,Ag_add,email,phoneno)values
("John Smith","123 Elm Street, Springfield","john.smith@example.com","1234567890"),
("Emily Johnson","456 Oak Road, Rivertown","emily.johnson@example.com","1234567891"),
("Michael Brown","789 Pine Avenue, Seaview","michael.brown@example.com","1234567892"),
("Jessica Davis","321 Cedar Drive, Highlands", "jessica.davis@example.com","1234567893"),
("Daniel Wilson","654 Birch Lane, Metropolis","daniel.wilson@example.com","1234567894"),
("Sarah Taylor","987 Maple Avenue, Greenfield","sarah.taylor@example.com","1234567895"),
("David Lee","111 Willow Court, Capital City","david.lee@example.com","1234567896"),
("Sophia White","222 Poplar Street, Rivertown","sophia.white@example.com","1234567897"),
("Christopher Harris","333 Beachfront Blvd, Paradise Cove","chris.harris@example.com","1234567898"),
("Olivia Martinez","444 Summit Road, Hillcrest","olivia.martinez@example.com","1234567899"),
("James Clark","555 Center Plaza, Urbania","james.clark@example.com","1234567800"),
("Mia Lewis","666 Rosewood Lane, Floral City","mia.lewis@example.com","1234567801"),
("Alexander Robinson","777 Skyline Drive, Cosmopolis","alex.robinson@example.com","1234567802"),
("Ava Walker","888 Heritage Square, Oldtown","ava.walker@example.com","1234567803"),
("Ethan Hall","999 Evergreen Trail, Woodhaven","ethan.hall@example.com","1234567804"),
("Isabella Allen","1010 Fifth Avenue, Opulence City","isabella.allen@example.com","1234567805"),
("Logan Young","1212 Lakeview Drive, Laketown","logan.young@example.com","1234567806"),
("Charlotte King","1313 Sunshine Street, Sunnyside","charlotte.king@example.com","1234567807"),
("Lucas Wright","1414 Lavender Lane, Roseland","lucas.wright@example.com","1234567808"),
("Amelia Scott","1515 Modern Alley, Designville","amelia.scott@example.com","1234567809"),
("Benjamin Adams","1616 Serenity Path, Meadowland","ben.adams@example.com","1234567810"),
("Harper Baker","1717 Horizon Edge, Cliffside","harper.baker@example.com","1234567811"),
("Liam Nelson","1818 Wavecrest Road, Oceanview","liam.nelson@example.com","1234567812"),
("Ella Carter","1919 Commerce Street, Business Bay","ella.carter@example.com","1234567813"),
("Henry Perez","2020 Timber Trail, Mountainville","henry.perez@example.com","1234567814"),
("Grace Ramirez","2121 Art District, Culture City","grace.ramirez@example.com","1234567815"),
("Jack Gonzalez","2222 Luxury Lane, Skyline City","jack.gonzalez@example.com","1234567816"),
("Abigail Brooks","2323 Cherry Blossom Drive, Suburbia","abigail.brooks@example.com","1234567817"),
("Matthew Rivera","2424 Meadow Road, Prairieville","matthew.rivera@example.com","1234567818"),
("Chloe Morgan","2525 Tower Street, Metro Heights","chloe.morgan@example.com","1234567819"),
("Andrew Bell","2626 Sand Dune Lane, Shoreline","andrew.bell@example.com","1234567820"),
("Scarlett Foster","2727 Park Avenue, Trendy Tow","scarlett.foster@example.com","1234567821"),
("Nathan Cook","2828 Whispering Lane, Tranquil Valley","nathan.cook@example.com","1234567822");

insert into clients (Cl_name, Cl_add, email, phoneno)values
("John Doe", "123 Elm Street, Springfield", "johndoe@gmail.com", "1234567890123"),
("Jane Smith", "456 Maple Avenue, Metropolis", "janesmith@yahoo.com", "2345678901234"),
("Alice Johnson", "789 Oak Lane, Riverdale", "alicej@outlook.com", "3456789012345"),
("Bob Brown", "101 Pine Street, Gotham City", "bobbrown@hotmail.com", "4567890123456"),
("Charlie Green", "202 Cedar Avenue, Star City", "charlie.green@gmail.com", "5678901234567"),
("David Black", "303 Birch Road, Central City", "davidblack@domain.com", "6789012345678"),
("Emma White", "404 Ash Drive, Smallville", "emmawhite@mail.com", "7890123456789"),
("Frank Wilson", "505 Spruce Blvd, Coast City", "frankwilson@live.com", "8901234567890"),
("Grace Miller", "606 Redwood Way, Starling City", "gracemail@gmail.com", "9012345678901"),
("Hannah Clark", "707 Cherry Circle, Hill Valley", "hannahclark@domain.com", "1123456789012"),
("Ian Cooper", "808 Walnut Place, King's Landing", "ian.cooper@yahoo.com", "1234567890123"),
("Julia Adams", "909 Sycamore Ave, Winterfell", "julia.adams@mail.com", "2345678901234"),
("Kevin Harris", "1010 Dogwood St, Braavos", "kevin.harris@gmail.com", "3456789012345"),
("Laura Baker", "1111 Elmwood Court, Dorne", "laura.baker@hotmail.com", "4567890123456"),
("Mike Thompson", "1212 Hawthorn Lane, Essos", "mike.thompson@domain.com", "5678901234567"),
("Nina Edwards", "1313 Magnolia Blvd, Tarth", "ninaedwards@gmail.com", "6789012345678"),
("Oliver Wright", "1414 Poplar Dr, Casterly Rock", "oliverwright@live.com", "7890123456789"),
("Paula Evans", "1515 Chestnut Ave, Rivendell", "paulaevans@gmail.com", "8901234567890"),
("Quentin Scott", "1616 Hickory Rd, Hobbiton", "quentinscott@mail.com", "9012345678901"),
("Rachel Turner", "1717 Willow Cir, Isengard", "rachelturner@gmail.com", "1123456789012"),
("Steve Hall", "1818 Juniper Way, Minas Tirith", "stevehall@domain.com", "1234567890123"),
("Tina Carter", "1919 Mulberry Blvd, Gondor", "tinacarter@hotmail.com", "2345678901234"),
("Ursula Bailey", "2020 Alder Rd, Mordor", "ursulabailey@yahoo.com", "3456789012345"),
("Victor Brook", "2121 Cypress St, Rohan", "victorbrooks@domain.com", "4567890123456"),
("Wendy Ross", "2222 Aspen Ave, Helm\'s Deep", "wendyross@mail.com", "5678901234567"),
("Xavier Young", "2323 Maple Cir, Dale", "xavieryoung@gmail.com", "6789012345678"),
("Yvonne Collins", "2424 Oakwood Dr, Esgaroth", "yvonne.collins@yahoo.com", "7890123456789"),
("Zachary Moore", "2525 Birchwood Ln, Numenor", "zachmoore@gmail.com", "8901234567890"),
("Angela Peterson", "2626 Redwood Ct, Valyria", "angelapeterson@mail.com", "9012345678901"),
("Brad Nelson", "2727 Spruce Blvd, Westeros", "bradnelson@domain.com", "1123456789012"),
("Chloe Fisher", "2828 Walnut Way, Dragonstone", "chloefisher@hotmail.com", "1234567890123"),
("Daniel Martinez", "2929 Cherry St, Winterhold", "danielmartinez@gmail.com", "2345678901234");
insert into clients (Cl_name, Cl_add, email, phoneno)values
("Vamsi krishna", "2419 kamalam Nagar", "vamsikrishna@gmail.com", "0918098693997");
insert into transaction_del (pro_id, Agent_ID, Client_ID, trans_dt, trans_type, Sale_Amt)values
(34, 201, 301, "2023-11-01", "cash", 123456.78),
(35, 202, 302, "2023-11-02", "cheque", 234567.89),
(36, 203, 303, "2023-11-03", "online transfer", 345678.90),
(37, 204, 304, "2023-11-04", "cash", 456789.01),
(38, 205, 305, "2023-11-05", "cheque", 567890.12),
(39, 206, 306, "2023-11-06", "online transfer", 678901.23),
(40, 207, 307, "2023-11-07", "cash", 789012.34),
(41, 208, 308, "2023-11-08", "cheque", 890123.45),
(42, 209, 309, "2023-11-09", "online transfer", 901234.56),
(43, 210, 310, "2023-11-10", "cash", 112233.44),
(44, 211, 311, "2023-11-11", "cheque", 223344.55),
(45, 212, 312, "2023-11-12", "online transfer", 334455.66),
(46, 213, 313, "2023-11-13", "cash", 445566.77),
(47, 214, 314, "2023-11-14", "cheque", 556677.88),
(48, 215, 315, "2023-11-15", "online transfer", 667788.99),
(49, 216, 316, "2023-11-16", "cash", 778899.00),
(50, 217, 317, "2023-11-17", "cheque", 889900.11),
(51, 218, 318, "2023-11-18", "online transfer", 990011.22),
(52, 219, 319, "2023-11-19", "cash", 101112.33),
(53, 220, 320, "2023-11-20", "cheque", 202223.44),
(54, 221, 321, "2023-11-21", "online transfer", 303334.55),
(55, 222, 322, "2023-11-22", "cash", 404445.66),
(56, 223, 323, "2023-11-23", "cheque", 505556.77),
(57, 224, 324, "2023-11-24", "online transfer", 606667.88),
(58, 225, 325, "2023-11-25", "cash", 707778.99),
(59, 226, 326, "2023-11-26", "cheque", 808889.00),
(60, 227, 327, "2023-11-27", "online transfer", 909900.11),
(61, 228, 328, "2023-11-28", "cash", 110011.22),
(62, 229, 329, "2023-11-29", "cheque", 220022.33),
(63, 230, 330, "2023-11-30", "online transfer", 330033.44),
(64, 231, 331, "2023-12-01", "cash", 440044.55),
(65, 232, 332, "2023-12-02", "cheque", 550055.66),
(66, 233, 333, "2023-12-03", "online transfer", 660066.77);

SELECT p.pro_id, p.pro_name, p.Pro_location,t.Sale_Amt
FROM properties as p
LEFT JOIN transaction_del as t ON p.pro_id = t.pro_id
WHERE t.pro_id IS NULL;

SELECT p.pro_id, p.pro_name, p.Pro_location, t.trans_type, t.Sale_Amt
FROM properties  as p
INNER JOIN transaction_del as t ON p.pro_id = t.pro_id
WHERE t.pro_id IS NOT NULL;

DELIMITER $$
CREATE TRIGGER after_transaction_insert
AFTER INSERT ON transaction_del
FOR EACH ROW
BEGIN
    UPDATE property_category
    SET pro_status = "Sold"
    WHERE Procat_ID = (
        SELECT Procat_ID
        FROM properties
        WHERE pro_id = NEW.pro_id);
END$$
DELIMITER ;


select P.pro_name,P.pro_location,PC.size_sqft,PC.persqft,PC.pro_status,PC.pro_type
from properties as P
join property_category as PC on P.procat_ID=PC.procat_ID
where PC.persqft=(select max(persqft) from property_category);

CREATE VIEW view_Sold_Properties_Revenue AS
SELECT 
    SUM(Sale_Amt) AS Total_Revenue
FROM 
    transaction_del
WHERE 
    trans_type IN ("cash", "cheque", "online transfer");
select * from view_Sold_Properties_Revenue;

Delimiter &&
create procedure getavailablepropertylist()
begin
select P.pro_name,P.pro_location,PC.pro_type,PC.size_sqft,PC.bedrooms
from properties as P 
inner join property_category as PC on P.Procat_ID=PC.Procat_ID
where PC.pro_status="Available";
end &&
Delimiter ;

Delimiter //
create procedure getclient_int_res_prop_list()
begin
select C.Cl_name, C.email, C.phoneno,T.trans_dt, T.trans_type, T.Sale_Amt
from  clients as C
join transaction_del as T on C.Client_ID=T.Client_ID
join properties as P on T.pro_id=P.pro_id
join property_category as PC on PC.Procat_ID=P.Procat_ID
where PC.pro_type="Residential";
end //
Delimiter ;

Delimiter $$
create procedure getagent_performance_report()
begin
SELECT a.Agent_ID, a.Ag_name,
    COUNT(t.trans_ID) AS Total_Transactions,
    SUM(t.Sale_Amt) AS Total_Sales,
    AVG(t.Sale_Amt) AS Average_Sale_Amount
FROM 
    agents as a
LEFT JOIN 
    transaction_del as t ON a.Agent_ID = t.Agent_ID
GROUP BY 
    a.Agent_ID, a.Ag_name
ORDER BY 
    Total_Sales DESC;
end $$
Delimiter ;

DELIMITER $$
CREATE PROCEDURE GetPropertiesByCategory(IN input_procat_id INT)
BEGIN
    SELECT * 
    FROM properties
    WHERE Procat_ID = input_procat_id;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE GetTotalSales_ByAgent(IN input_agent_id INT, OUT total_sales DECIMAL(10,2))
BEGIN
    SELECT SUM(Sale_Amt)
    as total_sales
    FROM transaction_del
    WHERE Agent_ID = input_agent_id;
END $$
DELIMITER ;

call getavailablepropertylist();

call getclient_int_res_prop_list();

call getagent_performance_report();

CALL GetPropertiesByCategory(109);

CALL GetTotalSales_ByAgent(208, @sales);


























