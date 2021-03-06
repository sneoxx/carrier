-- begin CARRIER_TRUCK
alter table CARRIER_TRUCK add constraint FK_CARRIER_TRUCK_ON_CARRIER foreign key (CARRIER_ID) references CARRIER_CARRIER(ID)^
alter table CARRIER_TRUCK add constraint FK_CARRIER_TRUCK_ON_TRUCK_TYPE foreign key (TRUCK_TYPE_ID) references CARRIER_TRUCK_TYPE(ID)^
create unique index IDX_CARRIER_TRUCK_UNIQ_NUMBER_ on CARRIER_TRUCK (NUMBER_)^
create index IDX_CARRIER_TRUCK_ON_CARRIER on CARRIER_TRUCK (CARRIER_ID)^
create index IDX_CARRIER_TRUCK_ON_TRUCK_TYPE on CARRIER_TRUCK (TRUCK_TYPE_ID)^
-- end CARRIER_TRUCK
-- begin CARRIER_CARRIER
create unique index IDX_CARRIER_CARRIER_UNIQ_NAME on CARRIER_CARRIER (NAME)^
-- end CARRIER_CARRIER
-- begin CARRIER_DELIVERY
alter table CARRIER_DELIVERY add constraint FK_CARRIER_DELIVERY_ON_CARRIER foreign key (CARRIER_ID) references CARRIER_CARRIER(ID)^
create index IDX_CARRIER_DELIVERY_ON_CARRIER on CARRIER_DELIVERY (CARRIER_ID)^
-- end CARRIER_DELIVERY
-- begin CARRIER_DELIVERY_TRUCK_LINK
alter table CARRIER_DELIVERY_TRUCK_LINK add constraint FK_DELTRU_ON_DELIVERY foreign key (DELIVERY_ID) references CARRIER_DELIVERY(ID)^
alter table CARRIER_DELIVERY_TRUCK_LINK add constraint FK_DELTRU_ON_TRUCK foreign key (TRUCK_ID) references CARRIER_TRUCK(ID)^
-- end CARRIER_DELIVERY_TRUCK_LINK
-- begin CARRIER_DELIVERY_GOODS_LINK
alter table CARRIER_DELIVERY_GOODS_LINK add constraint FK_DELGOO_ON_INDUSTRIAL_PRODUCTS foreign key (GOODS_ID) references CARRIER_INDUSTRIAL_PRODUCTS(ID)^
alter table CARRIER_DELIVERY_GOODS_LINK add constraint FK_DELGOO_ON_DELIVERY foreign key (DELIVERY_ID) references CARRIER_DELIVERY(ID)^
-- end CARRIER_DELIVERY_GOODS_LINK
-- begin CARRIER_DELIVERY_INDUSTRIAL_PRODUCTS_LINK
alter table CARRIER_DELIVERY_INDUSTRIAL_PRODUCTS_LINK add constraint FK_DELINDPRO_ON_DELIVERY foreign key (DELIVERY_ID) references CARRIER_DELIVERY(ID)^
alter table CARRIER_DELIVERY_INDUSTRIAL_PRODUCTS_LINK add constraint FK_DELINDPRO_ON_INDUSTRIAL_PRODUCTS foreign key (INDUSTRIAL_PRODUCTS_ID) references CARRIER_INDUSTRIAL_PRODUCTS(ID)^
-- end CARRIER_DELIVERY_INDUSTRIAL_PRODUCTS_LINK

-- begin CARRIER_HISTORY_COST
alter table CARRIER_HISTORY_COST add constraint FK_CARRIER_HISTORY_COST_ON_CARRIER foreign key (CARRIER_ID) references CARRIER_CARRIER(ID)^
create index IDX_CARRIER_HISTORY_COST_ON_CARRIER on CARRIER_HISTORY_COST (CARRIER_ID)^
-- end CARRIER_HISTORY_COST
-- begin SEC_USER
alter table SEC_USER add constraint FK_SEC_USER_ON_CARRIER foreign key (CARRIER_ID) references CARRIER_CARRIER(ID)^
create index IDX_SEC_USER_ON_CARRIER on SEC_USER (CARRIER_ID)^
-- end SEC_USER
