create table items (
Item_ID Number,
Item_Name Varchar2(20),
Item_weight Number,
Item_QTY Number,
Provider_ID Number,
Category_ID Number,
Description Varchar2(200)
);

create table Category (
Category_ID Number,
Category_Name Varchar2(20)
);

create table Provider (
Provider_ID Number,
Provider_Name Varchar2(20),
Provider_Age Number,
Provider_address Varchar(50)
);

insert into items values(sequence_items.nextval,'item44',7,7,3,1,'desc1');
insert into Category values(sequence_category.nextval,'cat3');
insert into Provider values(sequence_provider.nextval,'prov3',7,'address1');

alter table Provider add constraint pk_providerID primary key(Provider_ID);
alter table category add constraint pk_categoryID primary key(Category_ID);
alter table items add constraint pk_itemID primary key(item_ID);

alter table items add constraint fk_providerID Foreign key (Provider_ID) references Provider(Provider_ID);
alter table items add constraint fk_categoryID Foreign key (category_ID) references category(category_ID);
alter table provider add constraint uq_providername unique (provider_name);
alter table category add constraint uq_categoryname unique (category_name);



    
Select * from items order by category_id,provider_id;

CREATE SEQUENCE sequence_items
    INCREMENT BY 1
    START WITH 1
NOMAXVALUE
    MINVALUE 1
    NOCYCLE
    NOCACHE
    ORDER;
    
CREATE SEQUENCE sequence_provider
    INCREMENT BY 1
    START WITH 1
NOMAXVALUE
    MINVALUE 1
    NOCYCLE
    NOCACHE
    ORDER;
    
CREATE SEQUENCE sequence_category
    INCREMENT BY 1
    START WITH 1
NOMAXVALUE
    MINVALUE 1
    NOCYCLE
    NOCACHE
    ORDER;
    
    delete from provider;
    select * from category;
    
    commit;
select provider_id from provider where upper(provider_name)like upper('prov1');