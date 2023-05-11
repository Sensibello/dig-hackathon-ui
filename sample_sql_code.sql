CREATE OR REPLACE TABLE ADVERTISER (			
        advertiser string NOT NULL COMMENT 'User entered name of the advertiser.',			
        advertiser_group string NULL COMMENT 'User specified group to which this advertiser belongs. An advertiser may be a member of only one group.',			
        advertiser_group_id int NOT NULL COMMENT 'Group ID to which this advertiser belongs. An advertiser may be a member of only one group.',			
        advertiser_id int NOT NULL COMMENT 'Primary Key. Unique ID of the advertiser',			
        spot_id int NOT NULL COMMENT 'Spot configuration used by the advertiser ID ',			
        light_config_id int NOT NULL COMMENT 'Light configuration used by the advertiser ID ',			
        account_id int NOT NULL COMMENT 'Unique ID of the account',  			
        source_file_date DATE NOT NULL ,			
        advertiser_hash_id bigint NOT NULL COMMENT 'Signed 64-bit hash of advertiser_id::string',			
        LAST_UPDATE_DATETIME bigint NOT NULL default DATE_PART(EPOCH_SECOND, current_timestamp())			
    )			
			
	CREATE OR REPLACE TABLE device_type_entity (		
		device_type_id bigint not null,	
		device_type_name string not null,	
		device_type_entity_hash_id bigint not null,	
		LAST_UPDATE_DATETIME bigint not null default DATE_PART(EPOCH_SECOND, current_timestamp()),	
		last_update_user string not null default current_user()	
			
			
	CREATE OR REPLACE TABLE CAMPAIGN (		
        campaign string NOT NULL COMMENT 'string',			
        campaign_end_date int NOT NULL COMMENT 'Campaign end date as YYYY-MM-DD.',			
        campaign_id int NOT NULL COMMENT 'Unique ID of the campaign. (Primary Key)',			
        campaign_start_date int NOT NULL COMMENT 'Campaign start date as YYYY-MM-DD.',			
        advertiser_id int NOT NULL COMMENT 'Unique ID of the advertiser.',			
        billing_invoice_code string NULL COMMENT 'The code entered in the billing invoice.',			
        spot_id int NOT NULL COMMENT 'Unique ID of the spot configuration.',			
        light_config_id int NOT NULL COMMENT 'Unique ID of the light configuration.',			
        account_id int NOT NULL COMMENT 'Unique ID of the account.',			
        source_file_date DATE NOT NULL ,			
        campaign_hash_id bigint NOT NULL COMMENT 'Signed 64-bit hash of campaign_id::string',			
        LAST_UPDATE_DATETIME bigint NOT NULL default DATE_PART(EPOCH_SECOND, current_timestamp())			
    );			
			
	CREATE OR REPLACE TABLE DMA (		
         dma_id int NOT NULL COMMENT 'DMA Id.',			
        dma_region_id int NOT NULL COMMENT 'The numeric ID that Google associates with a DMA. ',  			
		dma  string NOT NULL COMMENT 'Designated Market Area - a holdover from broadcast media.',	
        dma_region  string NOT NULL COMMENT 'See DMA',			
        source_file_date DATE NOT NULL,			
        dma_hash_id bigint NOT NULL COMMENT 'Signed 64-bit hash of dma_id_google::string',			
        LAST_UPDATE_DATETIME bigint NOT NULL default DATE_PART(EPOCH_SECOND, current_timestamp()),			
        last_update_user string NOT NULL default current_user()			
    ); 			
			
			
)			
			
CREATE OR REPLACE TABLE geo_state_province_entity (			
		geo_state_province_code string not null,	
		geo_state_province_name string not null,	
		geo_state_province_entity_hash_id bigint not null,	
		LAST_UPDATE_DATETIME bigint not null default DATE_PART(EPOCH_SECOND, current_timestamp()),	
		last_update_user string not null default current_user()	
			
)			
			
CREATE OR REPLACE TABLE geo_city_entity (			
		geo_city_id bigint not null,	
		geo_city_name string not null,	
		geo_city_entity_hash_id bigint not null,	
		LAST_UPDATE_DATETIME bigint not null default DATE_PART(EPOCH_SECOND, current_timestamp()),	
		last_update_user string not null default current_user()	
)			
			
