alter table CARRIER_DELIVERY_GOODS_LINK add constraint FK_CARRIER_DELIVERY_GOODS_LINK_ON_GOODS foreign key (GOODS_ID) references CARRIER_INDUSTRIAL_PRODUCTS(ID);