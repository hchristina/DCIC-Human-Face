PGDMP         ,            
    u        	   humanface    9.4.14    10.0 r    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16385 	   humanface    DATABASE     y   CREATE DATABASE humanface WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE humanface;
          	   humanface    false                        2615    16386 	   humanface    SCHEMA        CREATE SCHEMA humanface;
    DROP SCHEMA humanface;
          	   humanface    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    8            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    8                        3079    11893    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16387 
   appraisers    TABLE     �   CREATE TABLE appraisers (
    appraiser_id integer NOT NULL,
    appraiser_name character(255),
    company_name character(255)
);
 !   DROP TABLE humanface.appraisers;
    	   humanface      	   humanface    false    7            �            1259    16393    Appraisers_appraiser_id_seq    SEQUENCE        CREATE SEQUENCE "Appraisers_appraiser_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE humanface."Appraisers_appraiser_id_seq";
    	   humanface    	   humanface    false    174    7            �           0    0    Appraisers_appraiser_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE "Appraisers_appraiser_id_seq" OWNED BY appraisers.appraiser_id;
         	   humanface    	   humanface    false    175            �            1259    16395 
   appraisals    TABLE       CREATE TABLE appraisals (
    "appraisal-id" integer NOT NULL,
    appraiser_id integer,
    parcel_id integer,
    imps_value money,
    area_of_house numeric(50,0),
    land_value money,
    total_value money,
    reproduction_value money,
    income money
);
 !   DROP TABLE humanface.appraisals;
    	   humanface      	   humanface    false    7            �            1259    16398    Appraises_appraise-id_seq    SEQUENCE     }   CREATE SEQUENCE "Appraises_appraise-id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE humanface."Appraises_appraise-id_seq";
    	   humanface    	   humanface    false    176    7            �           0    0    Appraises_appraise-id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE "Appraises_appraise-id_seq" OWNED BY appraisals."appraisal-id";
         	   humanface    	   humanface    false    177            �            1259    16400 	   buildings    TABLE     �   CREATE TABLE buildings (
    building_id integer NOT NULL,
    st_name character(255),
    apt_no integer,
    area_of_units numeric,
    use_of_building character(255),
    parcel_id integer,
    number_of_rooms integer,
    address character(255)
);
     DROP TABLE humanface.buildings;
    	   humanface      	   humanface    false    7            �            1259    16406    Buildings_building_id_seq    SEQUENCE     }   CREATE SEQUENCE "Buildings_building_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE humanface."Buildings_building_id_seq";
    	   humanface    	   humanface    false    178    7            �           0    0    Buildings_building_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "Buildings_building_id_seq" OWNED BY buildings.building_id;
         	   humanface    	   humanface    false    179            �            1259    16408    events    TABLE     �   CREATE TABLE events (
    event_id integer NOT NULL,
    response character(255),
    extra_information text,
    parcel_id integer,
    date date,
    type integer,
    price bigint
);
    DROP TABLE humanface.events;
    	   humanface      	   humanface    false    7            �            1259    16414    Event_id_seq    SEQUENCE     p   CREATE SEQUENCE "Event_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE humanface."Event_id_seq";
    	   humanface    	   humanface    false    7    180            �           0    0    Event_id_seq    SEQUENCE OWNED BY     8   ALTER SEQUENCE "Event_id_seq" OWNED BY events.event_id;
         	   humanface    	   humanface    false    181            �            1259    16416    owners    TABLE     �   CREATE TABLE owners (
    owner_id integer NOT NULL,
    owner_name character(255),
    pass_away_date date,
    is_heir character(5)
);
    DROP TABLE humanface.owners;
    	   humanface      	   humanface    false    7            �            1259    16419    Owners _owner_id_seq    SEQUENCE     x   CREATE SEQUENCE "Owners _owner_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE humanface."Owners _owner_id_seq";
    	   humanface    	   humanface    false    182    7            �           0    0    Owners _owner_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE "Owners _owner_id_seq" OWNED BY owners.owner_id;
         	   humanface    	   humanface    false    183            �            1259    16421    parcels_old    TABLE     H  CREATE TABLE parcels_old (
    parcel_id integer NOT NULL,
    concurred_price money,
    date_concurred date,
    date_title_search date,
    date_offer_made date,
    date_offer_accepted date,
    date_condemn_approval date,
    date_assignedto_attornery date,
    date_petition_filed date,
    date_commis_hearing date,
    date_order_vesting_title date,
    date_final_title_certi date,
    block_no integer,
    parcel_no integer,
    ward_no integer,
    special_proceeding_no integer,
    date_assigned_for_demolition date,
    date_removed date,
    address character(255)
);
 "   DROP TABLE humanface.parcels_old;
    	   humanface      	   humanface    false    7            �            1259    16424    Parcels_parcel_id_seq    SEQUENCE     y   CREATE SEQUENCE "Parcels_parcel_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE humanface."Parcels_parcel_id_seq";
    	   humanface    	   humanface    false    7    184            �           0    0    Parcels_parcel_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "Parcels_parcel_id_seq" OWNED BY parcels_old.parcel_id;
         	   humanface    	   humanface    false    185            �            1259    16426    property_photos     TABLE     o   CREATE TABLE "property_photos " (
    id integer NOT NULL,
    property_id integer,
    path character(255)
);
 )   DROP TABLE humanface."property_photos ";
    	   humanface      	   humanface    false    7            �            1259    16429    Property photos _id_seq    SEQUENCE     {   CREATE SEQUENCE "Property photos _id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE humanface."Property photos _id_seq";
    	   humanface    	   humanface    false    7    186            �           0    0    Property photos _id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "Property photos _id_seq" OWNED BY "property_photos ".id;
         	   humanface    	   humanface    false    187            �            1259    16431    tenants    TABLE     �   CREATE TABLE tenants (
    tenant_id integer NOT NULL,
    tenant_name character(255),
    date_vacated date,
    rent_per_month money,
    rent_refund money,
    rent_address character(255),
    building_id integer
);
    DROP TABLE humanface.tenants;
    	   humanface      	   humanface    false    7            �            1259    16437    Tenants_tenant_id_seq    SEQUENCE     y   CREATE SEQUENCE "Tenants_tenant_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE humanface."Tenants_tenant_id_seq";
    	   humanface    	   humanface    false    7    188            �           0    0    Tenants_tenant_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE "Tenants_tenant_id_seq" OWNED BY tenants.tenant_id;
         	   humanface    	   humanface    false    189            �            1259    16439 	   addresses    TABLE     �   CREATE TABLE addresses (
    id integer NOT NULL,
    st_num character(64),
    st_name character(255),
    parcel_id integer
);
     DROP TABLE humanface.addresses;
    	   humanface      	   humanface    false    7            �            1259    16442    addresses_id_seq    SEQUENCE     r   CREATE SEQUENCE addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE humanface.addresses_id_seq;
    	   humanface    	   humanface    false    7    190            �           0    0    addresses_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE addresses_id_seq OWNED BY addresses.id;
         	   humanface    	   humanface    false    191            �            1259    16444    event_people_assoc    TABLE     �   CREATE TABLE event_people_assoc (
    id integer NOT NULL,
    event_id integer,
    person_id integer,
    role character(64)
);
 )   DROP TABLE humanface.event_people_assoc;
    	   humanface      	   humanface    false    7            �            1259    16447    event_people_assoc_id_seq    SEQUENCE     {   CREATE SEQUENCE event_people_assoc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE humanface.event_people_assoc_id_seq;
    	   humanface    	   humanface    false    7    192            �           0    0    event_people_assoc_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE event_people_assoc_id_seq OWNED BY event_people_assoc.id;
         	   humanface    	   humanface    false    193            �            1259    16449    event_types    TABLE     X   CREATE TABLE event_types (
    id integer NOT NULL,
    type character(255) NOT NULL
);
 "   DROP TABLE humanface.event_types;
    	   humanface      	   humanface    false    7            �            1259    16452    event_types_id_seq    SEQUENCE     t   CREATE SEQUENCE event_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE humanface.event_types_id_seq;
    	   humanface    	   humanface    false    7    194            �           0    0    event_types_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE event_types_id_seq OWNED BY event_types.id;
         	   humanface    	   humanface    false    195            �            1259    32793    image_paths    TABLE     s   CREATE TABLE image_paths (
    image_id integer NOT NULL,
    img_path character varying,
    parcel_id integer
);
 "   DROP TABLE humanface.image_paths;
    	   humanface      	   humanface    false    7            �            1259    32791    image_paths_image_id_seq    SEQUENCE     z   CREATE SEQUENCE image_paths_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE humanface.image_paths_image_id_seq;
    	   humanface    	   humanface    false    7    203            �           0    0    image_paths_image_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE image_paths_image_id_seq OWNED BY image_paths.image_id;
         	   humanface    	   humanface    false    202            �            1259    16454    parcel_owner_assoc    TABLE     �   CREATE TABLE parcel_owner_assoc (
    id integer NOT NULL,
    parcel_id integer,
    owner_id integer,
    puchase_prices money,
    loan_price money,
    deed_transfer_date date
);
 )   DROP TABLE humanface.parcel_owner_assoc;
    	   humanface      	   humanface    false    7            �            1259    16457    parcel_owner_assoc_id_seq    SEQUENCE     {   CREATE SEQUENCE parcel_owner_assoc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE humanface.parcel_owner_assoc_id_seq;
    	   humanface    	   humanface    false    7    196            �           0    0    parcel_owner_assoc_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE parcel_owner_assoc_id_seq OWNED BY parcel_owner_assoc.id;
         	   humanface    	   humanface    false    197            �            1259    16459    parcels    TABLE     �   CREATE TABLE parcels (
    parcel_id integer NOT NULL,
    block_no integer NOT NULL,
    parcel_no integer NOT NULL,
    ward_no integer,
    land_use character(64)
);
    DROP TABLE humanface.parcels;
    	   humanface      	   humanface    false    7            �            1259    16462    parcels_parcel_id_seq    SEQUENCE     w   CREATE SEQUENCE parcels_parcel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE humanface.parcels_parcel_id_seq;
    	   humanface    	   humanface    false    198    7            �           0    0    parcels_parcel_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE parcels_parcel_id_seq OWNED BY parcels.parcel_id;
         	   humanface    	   humanface    false    199            �            1259    16464    people    TABLE     Q   CREATE TABLE people (
    person_id integer NOT NULL,
    name character(255)
);
    DROP TABLE humanface.people;
    	   humanface      	   humanface    false    7            �            1259    16467    people_id_seq    SEQUENCE     o   CREATE SEQUENCE people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE humanface.people_id_seq;
    	   humanface    	   humanface    false    7    200            �           0    0    people_id_seq    SEQUENCE OWNED BY     8   ALTER SEQUENCE people_id_seq OWNED BY people.person_id;
         	   humanface    	   humanface    false    201            �           2604    16469    addresses id    DEFAULT     ^   ALTER TABLE ONLY addresses ALTER COLUMN id SET DEFAULT nextval('addresses_id_seq'::regclass);
 >   ALTER TABLE humanface.addresses ALTER COLUMN id DROP DEFAULT;
    	   humanface    	   humanface    false    191    190            �           2604    16470    appraisals appraisal-id    DEFAULT     v   ALTER TABLE ONLY appraisals ALTER COLUMN "appraisal-id" SET DEFAULT nextval('"Appraises_appraise-id_seq"'::regclass);
 K   ALTER TABLE humanface.appraisals ALTER COLUMN "appraisal-id" DROP DEFAULT;
    	   humanface    	   humanface    false    177    176            �           2604    16471    appraisers appraiser_id    DEFAULT     v   ALTER TABLE ONLY appraisers ALTER COLUMN appraiser_id SET DEFAULT nextval('"Appraisers_appraiser_id_seq"'::regclass);
 I   ALTER TABLE humanface.appraisers ALTER COLUMN appraiser_id DROP DEFAULT;
    	   humanface    	   humanface    false    175    174            �           2604    16472    buildings building_id    DEFAULT     r   ALTER TABLE ONLY buildings ALTER COLUMN building_id SET DEFAULT nextval('"Buildings_building_id_seq"'::regclass);
 G   ALTER TABLE humanface.buildings ALTER COLUMN building_id DROP DEFAULT;
    	   humanface    	   humanface    false    179    178            �           2604    16473    event_people_assoc id    DEFAULT     p   ALTER TABLE ONLY event_people_assoc ALTER COLUMN id SET DEFAULT nextval('event_people_assoc_id_seq'::regclass);
 G   ALTER TABLE humanface.event_people_assoc ALTER COLUMN id DROP DEFAULT;
    	   humanface    	   humanface    false    193    192            �           2604    16474    event_types id    DEFAULT     b   ALTER TABLE ONLY event_types ALTER COLUMN id SET DEFAULT nextval('event_types_id_seq'::regclass);
 @   ALTER TABLE humanface.event_types ALTER COLUMN id DROP DEFAULT;
    	   humanface    	   humanface    false    195    194            �           2604    16475    events event_id    DEFAULT     _   ALTER TABLE ONLY events ALTER COLUMN event_id SET DEFAULT nextval('"Event_id_seq"'::regclass);
 A   ALTER TABLE humanface.events ALTER COLUMN event_id DROP DEFAULT;
    	   humanface    	   humanface    false    181    180            �           2604    32796    image_paths image_id    DEFAULT     n   ALTER TABLE ONLY image_paths ALTER COLUMN image_id SET DEFAULT nextval('image_paths_image_id_seq'::regclass);
 F   ALTER TABLE humanface.image_paths ALTER COLUMN image_id DROP DEFAULT;
    	   humanface    	   humanface    false    203    202    203            �           2604    16476    owners owner_id    DEFAULT     g   ALTER TABLE ONLY owners ALTER COLUMN owner_id SET DEFAULT nextval('"Owners _owner_id_seq"'::regclass);
 A   ALTER TABLE humanface.owners ALTER COLUMN owner_id DROP DEFAULT;
    	   humanface    	   humanface    false    183    182            �           2604    16477    parcel_owner_assoc id    DEFAULT     p   ALTER TABLE ONLY parcel_owner_assoc ALTER COLUMN id SET DEFAULT nextval('parcel_owner_assoc_id_seq'::regclass);
 G   ALTER TABLE humanface.parcel_owner_assoc ALTER COLUMN id DROP DEFAULT;
    	   humanface    	   humanface    false    197    196            �           2604    16478    parcels parcel_id    DEFAULT     h   ALTER TABLE ONLY parcels ALTER COLUMN parcel_id SET DEFAULT nextval('parcels_parcel_id_seq'::regclass);
 C   ALTER TABLE humanface.parcels ALTER COLUMN parcel_id DROP DEFAULT;
    	   humanface    	   humanface    false    199    198            �           2604    16479    parcels_old parcel_id    DEFAULT     n   ALTER TABLE ONLY parcels_old ALTER COLUMN parcel_id SET DEFAULT nextval('"Parcels_parcel_id_seq"'::regclass);
 G   ALTER TABLE humanface.parcels_old ALTER COLUMN parcel_id DROP DEFAULT;
    	   humanface    	   humanface    false    185    184            �           2604    16480    people person_id    DEFAULT     _   ALTER TABLE ONLY people ALTER COLUMN person_id SET DEFAULT nextval('people_id_seq'::regclass);
 B   ALTER TABLE humanface.people ALTER COLUMN person_id DROP DEFAULT;
    	   humanface    	   humanface    false    201    200            �           2604    16481    property_photos  id    DEFAULT     p   ALTER TABLE ONLY "property_photos " ALTER COLUMN id SET DEFAULT nextval('"Property photos _id_seq"'::regclass);
 G   ALTER TABLE humanface."property_photos " ALTER COLUMN id DROP DEFAULT;
    	   humanface    	   humanface    false    187    186            �           2604    16482    tenants tenant_id    DEFAULT     j   ALTER TABLE ONLY tenants ALTER COLUMN tenant_id SET DEFAULT nextval('"Tenants_tenant_id_seq"'::regclass);
 C   ALTER TABLE humanface.tenants ALTER COLUMN tenant_id DROP DEFAULT;
    	   humanface    	   humanface    false    189    188            �          0    16439 	   addresses 
   TABLE DATA               <   COPY addresses (id, st_num, st_name, parcel_id) FROM stdin;
 	   humanface    	   humanface    false    190   ;}       s          0    16395 
   appraisals 
   TABLE DATA               �   COPY appraisals ("appraisal-id", appraiser_id, parcel_id, imps_value, area_of_house, land_value, total_value, reproduction_value, income) FROM stdin;
 	   humanface    	   humanface    false    176   Q�       q          0    16387 
   appraisers 
   TABLE DATA               I   COPY appraisers (appraiser_id, appraiser_name, company_name) FROM stdin;
 	   humanface    	   humanface    false    174   �       u          0    16400 	   buildings 
   TABLE DATA                  COPY buildings (building_id, st_name, apt_no, area_of_units, use_of_building, parcel_id, number_of_rooms, address) FROM stdin;
 	   humanface    	   humanface    false    178   ��       �          0    16444    event_people_assoc 
   TABLE DATA               D   COPY event_people_assoc (id, event_id, person_id, role) FROM stdin;
 	   humanface    	   humanface    false    192   �       �          0    16449    event_types 
   TABLE DATA               (   COPY event_types (id, type) FROM stdin;
 	   humanface    	   humanface    false    194   �       w          0    16408    events 
   TABLE DATA               ^   COPY events (event_id, response, extra_information, parcel_id, date, type, price) FROM stdin;
 	   humanface    	   humanface    false    180   ��       �          0    32793    image_paths 
   TABLE DATA               =   COPY image_paths (image_id, img_path, parcel_id) FROM stdin;
 	   humanface    	   humanface    false    203   	�       y          0    16416    owners 
   TABLE DATA               H   COPY owners (owner_id, owner_name, pass_away_date, is_heir) FROM stdin;
 	   humanface    	   humanface    false    182   E�       �          0    16454    parcel_owner_assoc 
   TABLE DATA               n   COPY parcel_owner_assoc (id, parcel_id, owner_id, puchase_prices, loan_price, deed_transfer_date) FROM stdin;
 	   humanface    	   humanface    false    196   ��       �          0    16459    parcels 
   TABLE DATA               M   COPY parcels (parcel_id, block_no, parcel_no, ward_no, land_use) FROM stdin;
 	   humanface    	   humanface    false    198   ��       {          0    16421    parcels_old 
   TABLE DATA               {  COPY parcels_old (parcel_id, concurred_price, date_concurred, date_title_search, date_offer_made, date_offer_accepted, date_condemn_approval, date_assignedto_attornery, date_petition_filed, date_commis_hearing, date_order_vesting_title, date_final_title_certi, block_no, parcel_no, ward_no, special_proceeding_no, date_assigned_for_demolition, date_removed, address) FROM stdin;
 	   humanface    	   humanface    false    184   �      �          0    16464    people 
   TABLE DATA               *   COPY people (person_id, name) FROM stdin;
 	   humanface    	   humanface    false    200   K      }          0    16426    property_photos  
   TABLE DATA               <   COPY "property_photos " (id, property_id, path) FROM stdin;
 	   humanface    	   humanface    false    186   q                0    16431    tenants 
   TABLE DATA               x   COPY tenants (tenant_id, tenant_name, date_vacated, rent_per_month, rent_refund, rent_address, building_id) FROM stdin;
 	   humanface    	   humanface    false    188   �      �           0    0    Appraisers_appraiser_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"Appraisers_appraiser_id_seq"', 1, true);
         	   humanface    	   humanface    false    175            �           0    0    Appraises_appraise-id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"Appraises_appraise-id_seq"', 1, true);
         	   humanface    	   humanface    false    177            �           0    0    Buildings_building_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"Buildings_building_id_seq"', 1, false);
         	   humanface    	   humanface    false    179            �           0    0    Event_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('"Event_id_seq"', 400, true);
         	   humanface    	   humanface    false    181            �           0    0    Owners _owner_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('"Owners _owner_id_seq"', 1, false);
         	   humanface    	   humanface    false    183            �           0    0    Parcels_parcel_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"Parcels_parcel_id_seq"', 1, false);
         	   humanface    	   humanface    false    185            �           0    0    Property photos _id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"Property photos _id_seq"', 1, false);
         	   humanface    	   humanface    false    187            �           0    0    Tenants_tenant_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"Tenants_tenant_id_seq"', 1, false);
         	   humanface    	   humanface    false    189            �           0    0    addresses_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('addresses_id_seq', 14232, true);
         	   humanface    	   humanface    false    191            �           0    0    event_people_assoc_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('event_people_assoc_id_seq', 869, true);
         	   humanface    	   humanface    false    193            �           0    0    event_types_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('event_types_id_seq', 7, true);
         	   humanface    	   humanface    false    195            �           0    0    image_paths_image_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('image_paths_image_id_seq', 2680, true);
         	   humanface    	   humanface    false    202            �           0    0    parcel_owner_assoc_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('parcel_owner_assoc_id_seq', 1, false);
         	   humanface    	   humanface    false    197            �           0    0    parcels_parcel_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('parcels_parcel_id_seq', 42184, true);
         	   humanface    	   humanface    false    199            �           0    0    people_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('people_id_seq', 199, true);
         	   humanface    	   humanface    false    201            �           2606    16484    appraisers Appraisers_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY appraisers
    ADD CONSTRAINT "Appraisers_pkey" PRIMARY KEY (appraiser_id);
 I   ALTER TABLE ONLY humanface.appraisers DROP CONSTRAINT "Appraisers_pkey";
    	   humanface      	   humanface    false    174            �           2606    16486    appraisals Appraises_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY appraisals
    ADD CONSTRAINT "Appraises_pkey" PRIMARY KEY ("appraisal-id");
 H   ALTER TABLE ONLY humanface.appraisals DROP CONSTRAINT "Appraises_pkey";
    	   humanface      	   humanface    false    176            �           2606    16488    buildings Buildings_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY buildings
    ADD CONSTRAINT "Buildings_pkey" PRIMARY KEY (building_id);
 G   ALTER TABLE ONLY humanface.buildings DROP CONSTRAINT "Buildings_pkey";
    	   humanface      	   humanface    false    178            �           2606    16490    events Event_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY events
    ADD CONSTRAINT "Event_pkey" PRIMARY KEY (event_id);
 @   ALTER TABLE ONLY humanface.events DROP CONSTRAINT "Event_pkey";
    	   humanface      	   humanface    false    180            �           2606    16492    owners Owners _pkey 
   CONSTRAINT     R   ALTER TABLE ONLY owners
    ADD CONSTRAINT "Owners _pkey" PRIMARY KEY (owner_id);
 B   ALTER TABLE ONLY humanface.owners DROP CONSTRAINT "Owners _pkey";
    	   humanface      	   humanface    false    182            �           2606    16494    parcels_old Parcels_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY parcels_old
    ADD CONSTRAINT "Parcels_pkey" PRIMARY KEY (parcel_id);
 G   ALTER TABLE ONLY humanface.parcels_old DROP CONSTRAINT "Parcels_pkey";
    	   humanface      	   humanface    false    184            �           2606    16496 &   property_photos  Property photos _pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "property_photos "
    ADD CONSTRAINT "Property photos _pkey" PRIMARY KEY (id);
 W   ALTER TABLE ONLY humanface."property_photos " DROP CONSTRAINT "Property photos _pkey";
    	   humanface      	   humanface    false    186            �           2606    16498    tenants Tenants_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY tenants
    ADD CONSTRAINT "Tenants_pkey" PRIMARY KEY (tenant_id);
 C   ALTER TABLE ONLY humanface.tenants DROP CONSTRAINT "Tenants_pkey";
    	   humanface      	   humanface    false    188            �           2606    16500    addresses addresses_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY humanface.addresses DROP CONSTRAINT addresses_pkey;
    	   humanface      	   humanface    false    190            �           2606    16502 *   event_people_assoc event_people_assoc_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY event_people_assoc
    ADD CONSTRAINT event_people_assoc_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY humanface.event_people_assoc DROP CONSTRAINT event_people_assoc_pkey;
    	   humanface      	   humanface    false    192            �           2606    16504    event_types event_types_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY event_types
    ADD CONSTRAINT event_types_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY humanface.event_types DROP CONSTRAINT event_types_pkey;
    	   humanface      	   humanface    false    194                       2606    32801    image_paths image_paths_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY image_paths
    ADD CONSTRAINT image_paths_pkey PRIMARY KEY (image_id);
 I   ALTER TABLE ONLY humanface.image_paths DROP CONSTRAINT image_paths_pkey;
    	   humanface      	   humanface    false    203            �           2606    16506 *   parcel_owner_assoc parcel_owner_assoc_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY parcel_owner_assoc
    ADD CONSTRAINT parcel_owner_assoc_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY humanface.parcel_owner_assoc DROP CONSTRAINT parcel_owner_assoc_pkey;
    	   humanface      	   humanface    false    196            �           2606    16508    parcels parcels_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY parcels
    ADD CONSTRAINT parcels_pkey PRIMARY KEY (parcel_id);
 A   ALTER TABLE ONLY humanface.parcels DROP CONSTRAINT parcels_pkey;
    	   humanface      	   humanface    false    198                       2606    16510    people people_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY people
    ADD CONSTRAINT people_pkey PRIMARY KEY (person_id);
 ?   ALTER TABLE ONLY humanface.people DROP CONSTRAINT people_pkey;
    	   humanface      	   humanface    false    200            �     x��Ko�F�ϣO��Hd�>�ܣ�>�"p���K/�C�ji��d������4;ra��?:�f籜]"��G��ݴ]������e�E
p��S���V�0��zt�u��L�ۙr�޵'|�!�mB���S<�VF�.w��ԇ��f�u���r��{IJ(]BY�W2�Q�WLS╸�(u%^�Ԉ2Xg`}5�����[JL}��6mtȡm�*���M׵�by~��~��`MH(�x%S#J����%�<[s���	���\e�.�>��~(n�����~��^�T�����7��}��]	�G���3�:�����o[�r�N�FG�է�`m��7ׂ����y�礘~l�PJ��jD����_��v�P��s��1��e���\e��[]���撸���&���pu�ӏ�+�L^�Y�ɭ��H&W#ʔ|����-���,��U������Te�Rc����)�Wf��sZCb&:J@^v���05z����].��C���Q��-sK0���*Ì��[�dQ��ݭ��+�7�w�}�Ó<��-sM0�/�*���v�\����˞�9'�2w	�q��a�_�o<2�3g/�h��E�t@\e�Z�Q̴�$f>�3�����h���t@\e��}��%oc3эE�t@\e�Z��;�����v���$�2�S: �2L�{��b�C��ݖ&-s*�k逸������C�e�y�`RiTK��U�����hW�k���y6��--u&W&�V�:󗡹ing���QiTK��U��u 4'�5j��@f�i���*��ځ�9�ԙi��ɴZvڹ�0�Ap'��`~�&-s�1�q�ab; �4&1�X�K��f 'ٜ�sE�Q�:��	L����~ضt���<\:s�����	�RLJ@A�9W��ۙy��c�\�j�� �I�Av����tPz�'[w]�w�ׇ��Ǔ�9z��z��K0i
.Ho���2Ϝ�c�0i�(H��f �5�����^�&ʹW�q5��m���G�:3��F0��jӈg2E0�Uo%W�N<�)�I/�*逸���pq�����E��͙�>"�4WI��f��@`�����jB)�����A�I�cS�&��j$�s�Q��IX�z�x�5�fB#)���2H�d*�LW�Z���*�D�+�J(MB)��\e���	9J(mB)�W%m[.�*ʃ)�J�J�v��(�	.��L�����p�Q@���!^i�O_�n������;�����5os:��P�	�t;\�(Ӌ� g�<[s�<߿D�E��Y�p������b��Tg      s   �   x�m�A� D�x��j/�x�s+�w�Q�ǩ�Jt�X<U�V[��d���Y��T�����r����tO��'��_�v[/lk��LLA��_7G��U)�-{��?nXp�Hl幨�OG��be���2�      q   �   x��;�0��S�	V�ۓ�HR#��X�%Kَ��$Zhׅ��k�����f���9�l�.��ta:N��3����Ki/)pӉi֧�K��S�~�B�m�L���X�Hh���$z���J'�f�ޏ�ń���*�=tUG�jߏ�o,m%����f2�������      u   Q   x�3�tίHUp,K�+MU���Ԑ�����39?77�(391g��4 ��c���8�%8�8M�FӃ�	(=��qqq q6��      �      x���˭.ǭF�}�pFW�;	E��`�'� ˸�_.VG�^�h����_���*W��������?��?��<�o��������1�z�z�Ү_����_��߿��1#X3Ö�ݚ�����֔;8�9�\�Ȝ�ǰ�^S��L�Ӄ�����l�������~�ZF���-à��`�S0G��c��X1��� ���(@�E񳯊E��h���D^w���T#�1����I���G��\
4�s��X?�N����}O�:���L�����I���?���/_݀�0S���aR+��"D�!UH�sA�
�R|�UF�6	���=���$-aO齔���$6E~o�T!	i���lc��!&�C�+���%���3}~�iC�4��L����/�����Q =�}�3��Q!Q�����4:�X�|w.�[�����=��rlH�M3|90K��"��Qw�&��EugO�aҸX
&�&��)���	LZ��"��;X�u�0"��#��^�8W�;��6E�e�Z�#lW��42k�	��9�X�������ׯ��}Ҿ�Ծ{�#Õ�s?	�ܮW����-I�s���ȹG���Ůe2L�užC���zS~�徯�S�.Wl=���I��.wd�d��� �n�R��2B��$�f��P�D�E�o6Ƃ�v�z��lAŻ�B��|��e-%VS�@ZJO��^l�eP.e&��o]l��c)T���[��,�K,��#ʔXV��]�j"	�3~�J�c #�b�	JXZΧ�%j&���\W�%&:����0�A/��yKF=�t��0gɨvq 3��x����G�%��0Ǹ9�Y����k6g��T5&���\fjR5�ǴH��,�Z�,�Z亴�o���H��\��2B��$�6(ſ~'J�/6�s+cUl�!I��n'轁R"կU$�(Ũy���cK����N�qq2�lK��b�Ź��`l�@)F�;���Ӭ&������\q)�}X]�o%J�/r�9׋���Q�(e�*V����OP�U-QJ�"חd� ���L��"ם}iL�?F�bNe�3)(c���N����oeX����88�1og2����8����0�A��U����;*>(c�1��եq
R�I>�%�;"��j�*�'�1P#Q�@E�;ˡ����
F�D	��D	Q�(!����2���#ٕ��s7HM8x��u��$ǨH��/�(ſH���u]N��S��^6�����R��L�O@�1 �D�Ү�1��_ye@8o�H���3���Y+Y�Y5�]��fQu;#X7N�f=�R�"�j�`VK�b)���F����}��fQS꿏Բ�����$��E�GQnG<}p+E1�&K1��sM2�'K1�˹�ɭ,Gp��J�;7�������y���i%Y�]$�R)��z�7��H��m�ՓedW�H��b]ب��%�W�##m�	%��<�	�e�[�4k	�����-�UK	WK�.�0Tn	.�dM���3Y���|�����qB׊;Y������k{��5Y���4�r{�\'�5K	I/��c]�=G��}X����wV����|�5�vjܸ�6�bWK�ԩg�d���/�\���d�J��"�h
�'�v@�a��U�e������zX��-Y��rU��qX��3Y���r��Y�S��lr^��ѯ��܅ӪT��q�����₮`VK�b9��{$jc�e�L�k�8�w�+�P�+RP�{��I�vf��Ǯ)4��a	�$�Y�4d��H�����rR��W&�z�D)Y�$
�pI��[Q�S�~=U�QT��=��ep!�㰄�R��)�YEOmKrq��"�j�\�X尌�(�-o'�=�j�[�+���hQ�T��GJ=�`�yX������:};j��-N��T{q�ڕ;*M�;#M�;��Q�+矕m�H�W�e�7��N����J����>,�ED�>%V����~��,�ޙeU�4�"��2�A�o]��V�o�DMpq�1"��h�"��E����&;�}�,�s�^����f���W�d��S����+�~8����Y���p!ɎA��*�e"�CYf�=�h��u�#�:mc*���GEU�ihET��S�E[U��N���F�}DT�����m�kU�4!��	<�'��!�Ng�DS��a$}Dl+�W��2�BT��|��(Ǭ'YFϫ��J���FET��FQ5PN�Hz�-METu:�TD�@mc���:�grU��c{Dՙ%V���&FT�`9>��R|��_��B��r|����ȣ$��W��a	�ֆ�
KX�7��u*�Ox(�CX��a�f
�'Kq��w�PBW�I��!Y�%�N��I�ʄ�����]5�,r^9�kȪ̴����jhCY݊��VY8N��8�ڊ`ՐVY�(N��&�pqu;�=��~,'�S����JO�������uu;�9��ϡ�������PC^uZ:4�UV��]���z{V_�bY{a��DCc��l����q�ׯN��3̖�V9�Q�7uKN�KQ��/<�.�fR�)4����5�ƛL�sM�����X �R�h��}:(02��y/�͌�$ע�&�+C����e�j�'I}��p�v��R�q�ݟ.z���7wD��a�"TŹ�x��H�!�8'����,���������bo��l�"���ii����˴"F�;�os��.�n�75f8���F>~�?�F�>���&OH:RpC�{�AE��x1v6hONӂF������С�i��4�w�4��]����stQɮqޝ0Ai�x?κ��eU�/9^�~r����Lˮ��q��4/h��f㴕C-�����@G�Vi�H��l~fl��딮7N��x6�q�m�'W�'���p�s����sP�����~?f<��o�_��:�E9_t���ȱ�)FU�����-�ց9#�Gv��|��˝0a��iOY�1	tZJf+A�E�;Wp:[i��������x@������.��\l�0a��i#�0c���_��N������vTC9v��D��0�[��,aF���H�����f��C�+��N���H��m�|��k;}�����Na��wV=,�Z���_�����	3M�5i�@SM�1���&�~�ś�@jg�oNC��Pќ�hU���oB��+�O	]5a��(]5a��(]���a��W4����{߿%�j�&�?ʪ�����ۊX{aJ��S"�����H��X���κm�?R�Wfu5aF��W�����MG!�Jç�Bڝ�����F�Ng�Du�>t�Q*����;�h�6
������R"�8�>�0�uu����X����0ck��:��}u�[��|�H��L�㑜DaM��$
�8��Ȣ�fO�.rߙB�W�4� �i����i訫�4��܂���&�
0�Մ�{���̓h�t~p�/�?��XV��}g�E���������D,�5�m�@������:�0!buv�N��,AZ.�
+MB���
k�="�i9"��u:UP�u*�y}u�N�߃���0�w��:�*
��b ��iū�0%^d����l�0%f�UF�+�@a�[��(�sK��u9s

�-'�S���_G����(��s�"��R�5PW�S�0W�S�5PW��m�V@ƻ�m5a�Nu����%Z����l��J�#'b��)�D�ܟ�)Z���| �_��U�`tc@D[M�~�U���@[][JX�Մ	��
̉=֜�Niu+�vau;�.eu������2a����G��nl}��rf���p±�%L�+0N󊁪J�
�E��j!pѼ±��?��9s@�[�}�r�Oư1�Ê(��������hW� ��ZGaB[�1���1���TF���(�"�_�1�����,��Y�89��8I�;��l����/Lq��w��9�3�]��'�}�Vb,2ߩ���wj%Ɗ̧S�06;��0#-V�~9O/��fLɱ��8��!��d�,Y�Y;QN�ckr`F�co�sv�Or��ҹ�&��}l�B��^T��w��{&
�'�� �  ����>��>��N���I|�Xd�O�$�"����
,&t�ėZv�XPT�eǌ�/
،�DuzY�XN�����K��3>��	W�gLC&�B�+��YZ�����|���������h��}`�e���&��̇�W&���D9)���D��0#e��Y<3QR��S"�_��z�0�T���O`��S��[�#���1������>���U9�u$�w��'\�6o�F�:mNf݉r�l��)N��]ډ8�=�׳�s�$�����z��r��Ɓ9N��Ӳl�c�N��N�+��f'���`�G�7�!���t�����S�ϣk����#Q�%8�ߜ���DIvE�;=#��؅�ڜ]!�j�]d���D���L��<�3�c�J��K���'zl;OG
��{��~��R�8��0�I��~^�`��	��'�l�HE�)����;�r�0�[F�wgA���^qE6a��H�N��"۝��&�,} ��=�;M�X:
L�5�i)0Qc���E��|�U��&�xAv8Sr,��J�d�Z��Ky�cWd>e�Ư=�*�X��p� K��4N+d�ypV�����yFz!��b!Ȏ���-$Y�B~!�R�S��ׅ$;��$����I�)�_(���;>���j��M6��
E���X[��S��K���QM5a�:j��&�U5a¤�PU&��Y��S��*�%l��j�s��R:�7QUf���:�+��e��IU�Bt�I�ߙT�T)�v�"���	S�$�w�*�(��E�j�q?�/�u޹�n(�W���Σ�߿��S��P���Յ�Ey��b����t`=a���Z������WJ�be��]�]�M*���-��/��)nF���Φ5ъ��mL��V	��^ي��-�,d���:.d+�(s!ZQ,���l��f:ъbQ�.��9t\�V��H�)����9���˂̈́��r�;�;�_-6�Ty�?ş?��Ǐ��~�*      �   �   x���=
1�z�)�Q\��k���͐L "����a�|'x�x� K"Ɏ�
NM�V���Z&˭�4�G�1&�ޭ���gXXH��ç�Tx�R�]���+���)wyx����>��hc8���_lʶu�?����Q��      w      x��][o�8�~����L���.�!��FfГnt�h`�/r��Ҧ\��Tq���P�H������$��C�������~������B�?J��r��嵔���:�?�B]w�5�mL@R����^T�M}�o���ɚ��)���tAY�n�~Wo�S_g�]������|������l��ٱk�u7<e�U�m�ö~8�۬9dm���lh��ޜ�:���՞��=y-,H�60�_lڇ��T��{�����?��m]���Ԟ����J�\!׵��F{֨����s���4�*��&BYs����K*D��~�@�B5�Ђ���DW�(#�d�%�K��o�4�\M(I�_jXnCW�;X�����Bv��/M{���Pw�Dƭ���^Ω������JQ}�)=�WLY�=kH�>��LPҘ��٫�z�@�nQ�����ɪ���@]��>�7��&�>����c��}s�ǩ>�P�V��ԇ���)�i2F2ɬ�E� P�,zP��&.�%�;��+�.Qp�o��U>R��7_�n-/}�(�֭�	�E�ZA��i�%��6�85]s��7���}�޵���~h�7����ނ�p��^��+0	@jߟ�w�U��H�����=�>�D��ʠa�����fGƕ���r[��G�7(��/��u��L��?��`h�C{��D�FbO�u��xI,�l��1��� �j�6w��/k�R�5�T��������\*�夦��HP�W�t1ZN_�=T�:����Y�ҳ��/�����C��H	�||��ew9�ԝ�LY�=k�Y�Y����_�<��h�H*yA$Q���G\��k Zm=-T��D�/�7H��e�vʡvՁ��=�r�U�;��Od���~����������*Zh#��v.�x��R1����K���v`�H�������2�O��W��S�s�����-�8�
���À��O�+�a��!�����v_�kr3����]s�nO��XQͰt�@��w�d�������{�g��k���n�.�k�g�">����Jyj�#0��A��d� /�1v�-.Q�(�%	��]�j>�#�Bm��+��PM��{#��mhi;ZW��͜2l/f�(�䧜�̙��vʙ��V�}��ko�����O��|���C�&�$boG3��k�j ��]��ЀRh���<���s
��Ҋ���$���-��3���;%5�*XR�N�r�>A�`���^�d	���Ղ+ӂJO�1lf"�V��ho�v���lx�M����|C�+��3���kZ
%���T�G�0k�f0k��fZ�=Od�ڙ�H`���˓π����i��k��3����L�m�['�2b[�����Y�h�|�n��������I����<�0@>�����D� ���d�]P:,(4�a��1�cW5=�eI.�����]���]��߁6���@I"%�Hܴ�fA�6ե3���uk�̲F}S��s���vnޭS��9FS��uOZpF#����cuWmA��/u�¾�����q�_C��LػO�����2y�lK���5lG�:90��C����3��c����o�b���I.�i�z�?O�����]�G*
U�e*��6�PtA��)t�^M��dp��,8��3K����wuT&ੌ��ʤ(����6�?%[�*���c*E�(.��Ňc P��_4��$�.��QNJD(��%E#a�)e�]�FT�U��o/uQ���RL֬Ҙ�F{����΄�`��&�㙧�>�,�|�,��S����$3�,#����d��HKp�6���qq'�η��RԒh�B1-��y:�;Z���}�(�����P!����%�-_ �LT�/pb��o��S`�R�r����U]����1�]�Ԟ5:e+�*^f�Y�F!�56�8�A���"���\Oh��cJO9��2����ܯ�Ϯ��q���bP���`9���>�\���:A�&�+x�脳Ⱥ��7��j�,�N��������9�"8�A[�,x\,����Xߵ�Ϯ7��r!e��JA� J�0��1d��jq$����F��:��k� ��xpͺ��1N1-��ZԊ�U�\���� @�5�͡���֙��cZ����Rnٶ�@;���~ƤD�y���֜�ˆ��r<2p�o�<4U�mڇ��V��[�S�M�ܒԺ���qq�"�;�ا`3�3T��0C��^`짢� �����N�-�XlS}��M��Y�.x_��p�Z����P�5,H�i����	9�W1�m-�qw�j�K�6w����\�뇳�%s�Ȝ�T�
���61<�)T7hc8���t�.m=�\X��&֕��0 �Ӭ��D�K
m෬SqU�ъ�g��g�SA(�*��s�|��?�j"�C�}�������]�s�th��ėJPy�w����f��h���(�k�f%���� 	1}��d�$'�@��'�'<J�c{�A�9�i&����"2kh7a��g��(���l�>e_�n8QYxs��]��8[x���7u�Ë-lx�"�.���j�m 7
�Y�zͳ���e�pNʇ�v�5F��w��3I�΅�>Q�͋ϡ�r!�}Df'�	O*C&�1nq��|�#����i��Jq�X�F�kע�%s���(4�_��������@VY����t����B�.K_2����?��"۹�>[�g)�LI��d�r�m2�b��W����V����R<���恎��Ŭg��1�)	�P� �r
y�!'�����
��1niF���P'�ƺ.�N}�gj~��m�=6�G�K�I����a�0���������xg��o�+D�����q�,��}��C}��0=M�~�M2�D.�JJ�L$�Eq(0b�o��c�w�7�PL/��܁�AW�8�RJN�a�<ƃL�	Q�ז
��^�.��%}��L�bub��M�B��?�6�t�O���5{��P��zh��}�߃9�.�Q��@���9�,f��� (�|&�j�4^�b<Ho�E�$}\�F~XQ�83+/�S'K��9b�����������Q��05�V��K��+���PM�ߜ� �J<`=k�c�L���z���egn�,�rIٕ S��1ΒB5[$I��� )�$��)���){ܭ��`�����ϑ��X���$��(����J"cR�|�����ƣӔ�ڥ�r�1f	{6E"���U�]�R�*�}T�J��<�F��Kâ��5M�����GF����awKʦ�T1�Zp{�,�Ԟ��q���㫄pj�6����ظ�e)s�\Sm�4�̋o�"e�n�hrƴ��G�t,�[0�%W0�z@����=	��S�=L���}U�W]�rM���Q����>���R�O��lӞ�Y� �폝^ᄲ6N{6�MG�y.������~�.�X��j~7,���K��b��ܲ�q^|��p㥧/��k�t�=2�%���)����@���[�H��sf��
â�q��]���{��ss��R	�Yb�!>��3�-�z�R9������H�'�(�R�xP�*�R�x�RG�N��%�s����hӒ9zd���'��+��v�z9q�4�xf}��U|��b�|Q�K���nI�R���+���B^�T"ű�����}K��9g�M=��J/J�MQ��Wl�l��[*��u�ǅ�@�,fSrB��z��]�W僂L�� 8�
Nbj�썠]O1vEG�A�������pc�z�iɜ��N�G����H;�&����F!��@NEsa�,��;PB:�p����<�Im�I��e��VĢ@���VĒT��0��������+y_��O�̒7��F���̅l/>�H���K��P��p�=�o܉����r�6IV��r�v����Hh�!J�Ͼrn���2�Y�('j],Z�#�ܺ\ef�ͼ��+W��>����~v!u@�զt�FrN-��H��7 L  �z���J�e�hRuFtG^l�4oA*Ϛ�m�$���xꒆ��#ۨ���Ӯ�8)sԴy�L�i,$�[T����ZX�$�+<rb�ݤ�B6�b��Xl�!IU���M,,!N�xj~��M
�*�9k	b�k�9e�3[�}�I�tA�MK��"��|n�� �\4 ��x��R�<g��L��<�9E7��}]A0��/~�7o�U�aQ�������z��0��]3����u�c�=����������G������Y11��ǢX�Ց;3�ґ��9������~�f_�}�SC�M�MǱǳ�D3��#S���$#��1�+�N����_J+=��%�����E��I;��<]���R�v{*��w�]Cw��R�e�F�	1<3bq���ֺ3R~E���+ua���CNҺ�B��(`�Q�o�Q��E��wD�ɉ�wP7�c��i�g��$B����2�],��*���N���-b�Bw\q�U,K����L:��K�\y*O�~WA(g`N��W����Y؉_��8����O��h�w�6�9-�(ޭ`��]̲c%�]�N����̋�u�3Շ:f��\=%@���&{��R6TeZ$.��9](��Bq6������ˏ�,���§O`m`���h0%���&/ꅾ�B/z��K��R�n<U�
&�#��R}MN�H�E�GR�w§K��&7�텼�s��-��u/��W��������T��ՠ��"����yii��Y�y���� .c�M��*�gr��v%u��șo�Z)s��P�F̛ű��E���e)'r��,>rE��,0�S���4Q!���ȫ?�L��#<�b��[��Ӯ�h�(Ü�r>X�Ժ�/y�=o�[�MH�4�}S=dw'����[�;L�F=�K�ٵ_����L��?4��	�07ݧ$�0T�D9��>�S�\���>����h��D���A��9q+S�뚼���Sg�Q�����}	(K����,�}�z��
���G`�Q�8�E�ܽ��li#Zdc�-�����UP�I��Ӷ*�'����.�Ԥ'u��BO�t���t��H������9_����m�wM]�1k�͕��Sq.�ĵ��_"�ρ�ZL��9o�!��ҪqK7��Y�����i@u�:�g'>\�KU	
��H� ��ͻȍ��fpS�cI�=�q��T!��l�0��Z����;:3Kw
)�q���L��u�|r,JX&?���:vu+� 4�m��6�����������w;�@5]�?�lW�<�jZ���_�9=�v;�Ď��p�A;ڛٱ��<G
#+�UH��q;֌+>r�}�ѧ� 8$���_�U�����k5R�x���͟�W��Uc����՘�O�	}P/�{:�P^�Tϊ�U�.rF����]t�φ�iP!�H �S�IQV�!�8����������]���z|M-��)'0�x��b��\��1HWs�|�ۡ�tm%�&�K=�1�Es�"�NX��!WdN3�n	�P����W2�9��>�?%ߑ��49E>��[��"��_���1��N_�p�dfp¡L���
\S:$Z

���N���כ����U��      �      x������:w^��{�*Tu�-�Wj�S��_@b�$��2��'Ii���1��l��x�%�j��O�_����������?����������������_��_��_������y|~��~}�q�����������k�	������%|��	���878C8���O�pk���
�dg�������]8,���r�rJ���w�����u䒵m*�CK�Բ��.?�,���h�Y���T���n45�6Y>j��sPժ?k������~u���v��k�8��K���@]{��Ե��n��k�;<�� U�pXM3�6�ð��'@�|_j0����,Uj��a�#����'m-G(Y��7G�X���zc�m̄�%�+�r���O���r��a>&�������p
�"Ql��M�h��ǯ��.�,?�H��INZ��e����?�h6��w7�x6h��MD{h�ݍ&�c�߯����j��d�h�Z�m_?���'FS׊k���d�Z���j��Ե�4��kՎ��#?~2u�Z_�G�h�Z�#�e��k�?��k~�c4uͦ��n�0�5?�0��v�YE�.е�$�#����k���FC�����?�f�~�]�O��O��Z�w��k_:�4t-��e�������Z�)�5���V*u-��ϟJ]��Ե֟�v�ֶ��J]��Եjmץ����T�{��4u��m?���z�NS׮���O���5�+}R�ڴ%��8��T�+LM���T�N+L=���T�.+L-���T�>W�:v��
C����~.�Xt�_��c��Wu�'�\P�/VZf��)4j����=�n��4-F���M�n��4T-&���sQ���e�񡲹�+}��S�� 6p�[_�<�֏Oéoŵ�q*\ٟN�+���q�\���h8u��-��U{���֝���ρ��3o8���!�uǩu��]��ǆS�}�z��:�ϵ{?R��t�>15o4u�T�_�td�65n_��4J�wFC��ǟ6K��o_<}3|?q�C��u5��p���P�Ԧ�_�xq8T�����3|צ�(@�;u�S���������G[7�Z�gDG�W� a���N����N�K���i	��N�O�S���*��Rv�p�(�Ő��N?��4t��CXi�`�[g4�����۰J��/���硝������������F�d4M�\9h�Z���h��i���u"ڸD��BC�N7�4t�/~u���z�е˦��~��m�
t�����5��f4M�=n4q-��3�$��F"��Apb��Qp���Ip��Yp"��Epb��Up�����9��G�B�w �]�-���𨂷i
�S�<
N�{�$8�����Ժ/�S��
N�{�Spj]�׽M Q� x�Z��u7�Z��u7�Z��u7�Z��u7�Z��u7�Z��u7�Zg3]��m�B�?�S�>�8
��S�<	N�{�,8�����T���S���j����T;[�n�.�dlOm(���PN�s3�~
 V:M�s�NS�ܴ���87��4�ק��i��M�Y��ݴ�5j�M�Y��� =�FC�|�n4��[��i���;]�!z��k>E�4t��蝆����ĵ<fж{yN���D�����pb[��'�	V��G��p�'��qy���U�XN��o�dN��o]S�'�ݸ.�t�ZW<~6�ZW=~5�Z��Apj]�w�v��K�(v�c�j���d/�P�l}��Ħ�Ժ�S�Nw�:N��.{Op���S�,�EN��Ժ_��}֡1���+���Y_Q��Q���E�5oC�V:�{�(4�����P���BC��e{�*4t�g�����]�w4e��;�Nc�����еj��<g�6A��J��k�ߡFC�N�FɺjS	�9�tm��)Nd+��3H��T�������+�r���������o3<L|?xÉq7�k�('x�8W��K�M�P� x�XW��wצMdP�0�����E��S��{����6A���O����e�e/mn3<���{ǩuŖ��e{]�Z���S�|O�[�����Ժ꯻�Ժ����@;N�{p9x<���>'�;
ʘ��C��q(x(ϣ�éu>��8��Ǧ,��!��]��S�l-Rƨ܆8�;Z�P:�_�k�����R���W�p�\Up��C����������̎C�x:�ţ��9��b��B�A��������E�>C��"�������,��h(\r��NC߲�bk9u3Zww���Ah(�CG��k����=t���Eh�Z�I��C�Cy��i�Z=&I�V��V�����5?	�4t��#����=t�Vm�����h��Ck�е��BC�:�4�}���s�6�������U���i���mI�����N~:]�|۹�е˷m4q��#�������Hǉmu,l���D�3�ue#N|�3�]��l8��.Mt�W��}8�=�Ҧ(g�x��Oǉs�ui��D�:�SW���^�)Lm�
���@ǩu�ic8��O��_����Q[GY���:�����ԺO�S�<N�{�"8���'��f(q�q��w�Z矯��(�+�B��o���S�\[���Ł�S�l��y`��nT��$�h�=_�o$
���yǡsV�go��(x��޺�й�G8�Z�6@�ࡾ�8t.D�� ����V�g��9�����F8<Է�<���#_��l$
�[Y��S���qj]����Z�܎(���ˣ�a�ۅ�8��?6v�Z�������(x��5�:N����@ǩu���8��tsJ�܉���ZS���: yz�8�u��pG�C}-��qj�=7˃L/�I��m��r=��k���k���C����z$P�0������1HD�6H��a�>{w:g�o��� ����o����ž�(�]��F���O=��S늛M_��E���O ;N��sy9uW��P�0���ֹ��jJ���:�i��M��N(y�oeH:M���K��4��ȡo�V�~�J�����\��m��&�r��l~.�i�Zq��eŝ�kśj4t�O��F��J��k�[a�j��k~*�i����.���P��O���6��Z����vÉo�,�����h���ڿM|��t.`4JΗ{<>�&��t����#�]:h��Jk�D���B���;E�!��h4��ӭ��h�Z��/�C��k�w4t���V�v�P�����A׮��Cx�P�p��.'�]#6iC���$�<\o�IN|��J��?mX@Ƀ��r���s�G��t��Gу�Yp�݃��v^��=�)8���/��v�긭����>A�{� 8�.Yo�\�Ժ���6����z6U�8��S�ܒ���u3�_�|����˙7�Zw�ENN�;��7�Z�.��Fv�=Z�q�}{��0G�Q���i�Q�p�������EoO� �q���C�|r1p�\�e�\t:g�š����&(z�ނ��C�,;�/\����a⻴�S���mn�����N��3ҎS�|/�Eߺ��S�N����z�P�p�-��Zwم���HԺ���qjݾ�7��F��M��F��5J��'9�^��|ZO����{U�Zh}4���u�AC���_h�J��g�NC�.w���š��z�"8h��xv��n�b��C��J��F��xr;��l9ˡ�O(ox}��4q��mP����ĵ����9���+�&��t����Ih�ڠ��[���=��n�Z�}K��(iX� 4t����е�W�jގ�6i=r�ڤ�ȡk񏾠��}�Cm8�-�/�f�v�_}6����h([rs^�Q�0vt����FC�^2��l��A�h([q]r�/"B�z��~ d�P��BC���i�Z���h4t�/)t��^�4�~��6:�u�v��]��NC�N�FC���'�FC�.΍��YY��8h�m��z���\�@�\�$��L5�F1����s��k�����̵/�f����!��sl� ��E��\��Ah�ڽ�u?r�Z�]��a.�ύ��=��n.����6w@�B���;ύ��=t������(X�    ��ɑ]������v�Q���Ah�m��P���B��BC��Hd4�nZz�NC�.׷$��2t��m]�z�(9�FC��M��i0T͟q��in�0�o0m�f��h~頙h�E���b����+:�D���]&��(E�_�� ��L4�5�A3����L�_�lZ��j1�
g�FCג���6����k��;l4t�?��҃�!VנS��Qx��%�AC��Qn*�nZ���е�M�r�Qp0���u�懡NC��#Mn�"J��(�T���5ץ��)���e�݀�i�I��P��C�l�i��0�[W����Y^��f�3|m�n4��ύf��o���h�Y�ի��j�1�7�ڔ��L�Ak�F3��zG��?���w�u�00H�+/�C��A�]y��kn����k�ݠ����a���ɯ�5��� U�y��k�A�����6Mk4t����е��BC�� �i��C�C�fQִ�]�o��kg_�p����
���]3�����f�����6��o0��h�g0z��C�nX�Y���_r��eٕ�4�,�'��IA���R�,�~��4�,�/&��3Ͳo�`�����Hj\�3�8�4+.��0��^Q��̲3���{�0!�x��O��b���03�r���$��75}֏�'�FńBǄ�B�&]��蠁eJ�)����G��̑�@pm�&���}t��6�,4�m�E����
����B��n��ж�_z��(�ͲHF�x��[~�8�m��]v��6g!)��۳���n� �v�m�Ab�Iｺ�P���n�������N��槤Kj�M[HR�x��&x��&x��6�9Gǉp�,�M#�ԉ�7�_8Érc�>a]?�mD�ǖآƞmC�ߎ��D�<˞�C��fA$1��޶�D�<k��E;[�L�����A�r_�6��s%�����&��t�ض�Qhh�_�4���'Y>��6,��`�{ۍ&�����{�$3:]��ن$�m��!�gHl0�{0�f���9g�WIlp�!;�V��]�cK��6t�����$6��~�FC�.O�����]3��6>DB\��F�&���Ѡ�ĵ�ֶ�k�[
�T��m$"����#7��6�����W��$6t�|�X䠉k+�&��/1�G]�;�ȍ����	<��h��C��k���=t���Yh�Z���$6e�Dz��FC���Y��k}$��HWi4t���G��k}4(�vm4t��w��ĵYb~{��:Nd���Ɓ���f������맒 A� 8N�(81N�$8QN�,8qN�"8�N�*8���C�ۅ��=�^8j݃���M\.��GB��X!��*���|�|�|N��7?��d:pj݃��un����u��S��<l�Ժ0&C�S�\��m���~4�Z��N�s�,�6D�B}[8��= �O�
�����S��֕1®x������8pj��\e��i
�۫�G!C�5�5���M�P�P�^�8���M�P�pVA�[������ŉAS�n:M���(45n��
g�Tp4��,R�%�O�P���9��C�B��k��h8����o��ה��hr�ƍ�۴uár�}o�����}� 8���M��S���g��O75:Z?���#[���5��#Z�l����G��j��Gv��P'�?�GBʹ5	� T�6�D��c�f�zQ&�����S3�Ǫ�8�F@�J�6>x�zX��3�������h�?�&^?�1pj��{mD����2N��s�r�a�+V��^���F�D�_�IW��qn��i*ܾ�5h�[tG��҉I�wږ|�m�F�Ĥ�����e�vzQ:1���s�t��c�t��h�Z��n�#7���Ah�:]s/��V�u��I7��{�NC�N�s��k�O�4q�k�I
�P~NO�o{YNl;ǒ�~ѥ�XNt<N|�q�:N�;ߪ��w����k �l8QN� 8qN�(8��|]��8�.��ڼ��D!��Apj݃G��u�kc8�����u~ձ�Ժ䬋��S���cǩu��e�:N�{� 8��W�M˶����^N��ꓖ�%�a���al�
)��eÎS�ܗhKl#
)ηJ^���7��q(�X� 4u�T��N+����BC�^�b�Q>1��6d���Ъ�mtD���V�l�P��Z�Rb�P>q��v��"�T��G�|�|+�>p�\��^c_+���zI�O����t��%=O�[��A�m������+���e�FC�zIOI�S��Q<��Ah�[�G�h�N�W��p�Dj#J'&�=�u�V��??;p�[�+���5�F�l8�t�Lj�
':}X�ݲ�P�˷��M�/fM��Ƴ�q�qmh@���wa'ƍO��TP��Ah�۠�#7��v��@QRUP��Ahb��H�G�Zn������hb��I�mL@a��^�օ[�Q԰�A`"�xe���a��a��e�٘uayUf�Ĳ֖�dc�|�TmD��\c�Ke0Ql���̰�3�8�0
8�{�"03,x=f����̰���2�g�nLsnL��65l�*	5l«$�����}!)�Yrl8pL� 8�,�1LJȔ�<�a.�I�ԒsÁi���k�G��m�'��o1��_}���4�xXq�*('�M|�/N�\�XG,p�W�J�'���T��ĺ�G�S����h"]��C�zu�8��Ah��MG��q�����E��[��M�O��o�5+GÉoo�b�%��ķ�*Li]4�&�Z7�����z�ZM���pb\�E�9����	�}�8q.����*����$O����N������Һ)�'��޺�Ժ�{�H�p�Z<q�Ժ�WO8����q�S��F��S늿��ֽtV��$��o8���u�séu���׼�~o�<	n|��S�솓ܷ�Q�d
����4uέsv�*�b45�z�c��$O0��5����э�	B��n~t�4�-�sn4�-��f4t͊��<��Q��	����е�:���d�&Lzo�h�ZvCjm#2I&�4�4t�訦]��i��k�.�ȡkٻf4t�g��CH�`t�g��#H� t��ǲNC�\��N�A�(4t���g��k�=iu���k]�4t���m��C�Y����?q�R�̉�B��k���=tZi$L:m3��k-��D	���1��k��ǌ����3���zιk��Bs�]�Ʈ�`x��еˏ�m�M"�I���h�Z���쑫m�MB���ĵ��B�V:	M\[�,4qm�����ĵ�ֳF\[i=kĵ�z�F�.���Cǹn{�q���Ct��w��]��<p����3ϝ�v�t}�p--TΏ�к�V�;��B����n����:�p6ph��:���:?e>��к�=���ph��O]ǉuel.ܒ�3O�>(O�>
�r��|?~�4�Ǐ���'��MLd�v�D>��'�	�?�O��<����Կ�/�C�,p8����p�8<��/�C�<(�K���Dt��=��:T�����<W���p(�_b8����Oáv/}~ǡu�{e贱%��r�ĺ���^6Z��A��<�n�u����e�5
����k�;x������/�/�ࡎ!��JO�MP� |P��'|��'�~_>+��C��=���}y=(�~;P�/��?����X?L1y��c?x�/�2x�ߟ���(�^�
%�W�P,!|Q�7�|U��ܓ�e3~�MԷ���C���x�|�u�I��b��=	��'�MYP@Q�yYD�l΁�ך���Egvl΁2�ת����S��ٜ��mt�ĺ������Ǧ(�>(O����Y�d�<o���Ѯ�oSW�'�M��K���Ľ���}Ej�m΃B���<O�>(O�;�->Uڷ>E��e��C�ܛ��c�.J/n�x��w�	{��m��D��Ayb�5&���~�wQ�!|P��7����yb��[��>���>����������3�� ���^��?@l    ���?p�\�=�!�c���x�`��m������e<u�����ڿ��ۧ>��>u���D���{���1����>q���� X=��w�xc��/�N��7�%[�Y<N�c��GÉy��f�sNĻw5��8�nŃ�D��=����W��O�C����ġu�kӆ�e����qh���c1Z�q=��C��������^��LZg/�R�^E��|����;	]���%�f�[;	ӕ#Qrq���������~�m8D��[%��3�F-U��\����8�+�rk	�l0A��]�f}�83,Dwg�~�f��M�8s;�{�+�5�X������b�ۅ8��F�#ʅ�� o5�'�ۗ����P��JC���k*�w��q�r嵐p�b嵐o�,ʯ����b���QP��z�(�X�4um�Yi�ڤ���5۾��9um��9��Mz;�ԵIo��7\�Xb| q�Wm��B���i��;�\s��&�\���4s-�{��̵��N3ע7��̵�M�4s�F2�o6=FI�K3hD�d��&�(�x�P&�\+�w���/̤�kՆ� ÿM�P��L��vZ۟��h�>@��/~��4h��C��k�~�Q��M��v9[�MVQ��M��>c����5�l����o7��q�o��:o�d>��~��������<���-�GQI�|P�w��#3���n�ʻѓ��=�v�Կ���S�>)O������E�$t���Iy�Կ^MBV>ce���S��O����v����S�>(O����[��y꟟i���C�xO�+}o�����ս�v�m�H�|P��W�Jۓ��ս������>�S�>(O�{��<����Կ���S�l��`�<�������Ay=$�P^�I ���G"���������O�ÿ�_���[�7���O������WHD��˂�S���x��xm���?9���C��|P�g�~�:���l�H�x�_����п/�����B�?�d<����IXq��n��>I+�|�<�/��/O�{��<��}��&���������٭�$�?�������<���O����}�'��Ay�_���<����6ٕ��/�0��S�>*O�{��<����Կ�/�S������$�x� qi�I�q��������S���Ue�&����7��?x�������6^ʆL��w��?x�_?<�/��l�q'���������y����=H�!xP���Qqhރ'šx���8������{���C�j���46i"aG:Ƣy�E�l�w(�'�	�'�ݼTw�<1O����z�r��{��R"~�D>��'������~�o�S������?����C��<��p�
����[�Կ�C3i�&�(����;��e��1��\(��>��8�����P��	Kǡ{�=���|+��c����qh��l��D�0�M���x"��Ay"^�_�{i��7�����'�v�D�p�UǺZ\�{��|�G�Q�!|R��'|V����>���ٽ��Y�`<����Կ�u����%��f��C�^�^ǡ}�v@�d8���t��GIǊšz'��{�(�D%O�>(O�>*Ő�>�x�'���w9��-���_<q/�)K��,�T�|q�'�G9�|?,餣���&_����~7������S�>*O��/�����f(�>(O�{��<����Կ�ĝ��G9����Q�1_�K���Zm�r���-1y�_������ȍr���?�j��v��鳁��������w�T>w�ve7^�oG�|*�[�զ(�>(��"F��T�Q����z��>'���Ay�^(��m�G�䷈u�о/�GG�����G��J8V<(N����>�u*���;N��7~ǡz��vWV���tc�����C�b�x,+=�f(�P�� ���=�p��C��|T����п/���~��<5������?��m/�����`u<��xu?�/��i?�u�`������/G@L�������~�ੂٷoS?�vL~o��T��"]����??/80��m򄢎�C�<*��/�E�мq:������'�C�zE��f�V4>����C�,g�blns6�r�xX�R��[����R��Z'��/��'Ǫf'�r�~w�Ļ�m�d�ku�J9^��;yb��<m�x�*g'�r�'�	�'�	��G)���y'O�{�ϫ��2���S��S���/k�V�;��������Yץ{��vwB)��Ay���O�����~O]�Q�1>�j��mo��O{�55�b�	E�����������=��_�������/�ߣ>���+��������=���߳O�P����m����/���������/(�����������/(��������4ײ�:�UO(�y���ĩ���S�o<(Nݾ�8T9$�Xq�b��Z\k�P՗�XV=�'������z�65D1����;�����
�8o_��8T�
���
�'�xP�]�>p���v�8+��B��}k�p��VO(�y�<�ġv��:�	�i��JpV<(���"�ġuş:�����;������YZ���7oߚ8�n�aKHҺu�(�y�
�ġu�nj��s�i%��n޾	;qb]�[v���i�
o��2��wy,��^z�Qx��]Ƨ�y�mb�D=��(�>*O���1<�gTN�F�Pt���'O��sː��U�N(���V�<��^͔f���N(�>(O�ss��S���|\�R9�"xB������G�M� AVpO+)�Pr�ߖ&O�;�7���g}7�m&���y�_5OϿ��(����_��j�~���F������y�_���U�N(���޾�(���Qѵo��n&���y���):���	�7����<�����o��o�۳�����r��ՠN(��o�Z�U�N(����^]�<��sBN~{5���8y�ڻݿV�9�'��<y�_��U9��x�����L���矃��Y�2��ک�8o��8�϶m���O�(ę�~��G!��G�����xh_����}1���ʨf�L~o��о��R��8����<�/��ct�%�(��o�>&O����֡=�.iF����G��\�޺u�(�y���ġ{ٷn'�c��ց�C���m��%��wzW�o�ne)�m�c�кs�l�i�$3JJ��zG�Q0��zG��n]�A��WZ燫�C�.��?ph���N�+c�%�&���Hf�jL~���Ļ��C5y"^y],<1����z��c�=
6��b���{e��ڷ:t�m���}e,�l�V�.�`��.�����lyX�:rE���<��w����ew�������yo����=|V��W�b����(�(��M���Uk_��V�.����.6��wzm�D)Gy]l<��ڃ����e�sL~o�xt����Z��q�(�(/��ĩ}�_�u(_�O��_�=�ZFA���C���q��K��qh�M�Ye�f��%V�8�ί�[���2��6��8�8J���Kѧ�(�(o��C����WF�Fy��Z�?4"�;V�*�t��M���}���]�l��M����wN��Q�1q]�8
6V<(��=���u��)Kggŏ2�5�=S�'���jWoŏ2�5ꯗ��N��Wg%�C����(֨���쮼�x(֨�3����k��[��b��D��_��m��?�kZ��b�����������~�j�dk޵�y�_����*4�����Ҿ��(֨�3=��RP�1xw�:O�����_�����8�����V�|_>(�{�d��r��|��f�B�����Ax�j���}��<���g�~_�(O�{��<�����L���������ܾ�����%+SP�1x�0�t^ƣ\��L_�+SP�Q_3��S�z9I���KA�F}��O�s�N���݆H��RP�!|P��ge�tO����O��Σ�CxmEu쩨�Va�d
�8>{���Z��KA)G}ݓ1x�_��X���S������}P�Qߖz���˪    ��qԹ�S�"�:�z���j��p��.��qh�K��q(^����o�<�ǡv�6�뙷Q��m�h�к�S��QP���Aqh݃G�Q�1�c��3qh݃���Xcŷ���U�����u�<���8����v�ܺm�8����K�֝���<�u.o~<����S�YRP�Q�
a�8��?��Xw�.�Yᎂ����;��D��o#���y7�������ߏB����TC��<��X�ֳ9�5&�-0���gI�����q����^*�?�/�%�N+�RP�q�.0���JV~��x����<��)�������6�B��Ay�_�~�e��4y꟟���W�3����M7Q�q�.pw�?������g[1���i�[

8&���'O�;�R哧�=|R��g|�������<�χ��������S������Tp�3����<��7���%z>��EE	���-"<�/|���<��e��JLTq������y�������(�8���~�~/K�V����c���w������Կ�vG������%��;O����O��M�RDE������n���VDE���D:xq�o��]V��k���[����e�t�Ծ}�?q*����&Nݻ�u�^ܿ1pY����e+�ġx��DE���e�d�(�8�V�Sp�uQ�q�l�8��}��R����ġu�K�qh݃Gšu�v����ee"*�4V<(�{�8���R�r�G�����9qh�[�8���?xh݃o�C��}��e�9*�4Η-���]�.�ˊsT�i�/k�'�]�f�۵4�e�5*
5&�k��G�������w��q^V���\���;OԻ��J����%����|���e�9*�6��F�ߑ���FE�����6y��G1y�_��o��7�Yf�~6f��c�����=|P������o}�8��ư��{����eu�e�1*�8�>K���Uƨ(�������{��jT�o\o�D+�QQ�q��Ԭ�EE��5|�'ZQ��k{��}����m�8��r�L��PQ�q�z'֍1��o*�5^����~�|�z�ĺ���Pcœ�ĺϊ�V�(N����vᬳB���e=w�ĺסn�к�w|-{ .��QQ���Aqh]�5�|�к���pe�Q�X?:zY����D��Z�_ɕ�8���l.+RQ�1��Y?�0qh݃šu��=xRZ��Yqh�ظ���+��=xTZ��Iqn����ܺS�.L�[�����mc���u�7pn�6�Z��`�ĺ6�;Qn��Aqh��YZ72C�*;��3++�s��bŃ��:�����=��:�����кO�C�,��ud�t�Da�B��s6:��چ�����и_G��IC�nz���7�_V��D1���g�}�8����ɾu����QL1�m�qY���o��ęrm�pH]g΅���8�����E�*�<�Z����-����C���[}��o��ġuٵnՙNS�H[�8����mb�b��K]��C�ܙ��B'J)��N3����:QF��5hf�}5!�o]\VP�D	�B��o���ѥ�(�Xhme�f�e�:�\��f�7�L'�$�g.�o4s���y��5�?��v�sn��"�%;M����ˊ��<��H�|P���>����a��n$�����;��|��[G������<�n���s=ů����۷{���O��|��o�4��ٷo��8b���S��;�x��@�����<��z��E$����������}��P���c�q=�F�IR����<��w_��C��Y�\ʯY�v��\�����Ir	���P��Nݳ�c	������C�|�c�N�K�<n��%�ݎU�:I.axq���:I.1�u�I.a��3��Ir	����:�cX�������o�$���r�秽ub݊'ŉu+�'օ{ߑL��o'�?�zx�]��N������\�E�	�����x�`�p�<f��E�	���D���la��E�	��ݺ����`º����{u��������������C�No��$�0����r�[]$���~�'��{ׅ6O�������wq<���b�E���_���yq�M��o�I'&��y�����p��[���g��HF1���z�<�8��T�z� u�O���E��ɻ�;O��d+�I+��N|pm����Ap�߃G��|�V���g��x^��=x�Z���-�%��Z'���B�U'Y��z�W9��k�\rT-W��B�'1��r�IJat�a��@ָ�h([�{8KH.�R�2��Cي�a�
�Er
íʐ�K�<�����HRa��Ͽ��E�
���ĸ��!��{�HZ��7vw�.�+n~�O�˯�����d������'�E���MA�����Er��D�����O�˯�[;�ҋ�o���ge�.�^�~c��������d}6�����u㓭>_(�Ƚ��������귽E2i(_����x�yQt����˖�/]���c-�u�~�|/*:������//���+\�v}�����W4D���@�~���v(��o�T'��o�_��E����c�.n�]�k����=|e�'���?2�[A����G8.��:/_��~�I��C��_�����/^?�zYU���H��Ѓ���^V��B	��@�?�����ǅ��E������](��k��о��~+�v�c�p�o�о�{+�v���s�\�ee�.dL~o���??u�2o�2��W�zо��>+rv�$��Ccg㯟�AQ����>�C��}`�#{��xh_Jξ+�K��e59>�K��оdw�!/ڗ���xe�}�&����K���S�lӔ�
W1���cO�߮�4���z5ڗ�g$�u��u���Ayh_�%^_ڇ����߮
5��C�r���yh_����շ{E��K1�F۝�������#ɍ�����m֣$�����u���l�9�B���X�B7��� ����u��>�cy����D;�A� ���@��N�X��Ҍ���{��9��Q�!|P��'|T�(|R�:��Yy���B�%٨�B��H��7�o�w�S\$	�{E�O��y�����!�o}'�7��#�����#��rݱ.�ڄ�x�����;�����}Z��r�������+5�8t����P�����������<�9V\��/��r���qh݃k��2�烧ˣ�=eO�>(O��q,;���7?���wC�)�xb^��ͣ�����JoOI��&_�}7O�[>غ�o�m�qL�i��D���G�˷O�Kۣ�=�O��.F�S��e�����÷��ߏ�pr�xP���{ǩ{��8T��/w�a=
8^>v�P�}�מ���u�˪���vi����ph݃šu/������
�8�n_ڶ�	áuٟ��C�?�6ޠ`��kc7�+n�8�n_�Eáu�W���;����mQ�ph��[7E/n�Eáu�o��ĺQ>��YmQ�pb݊ŉu/ūo�X�q[Z���u+�<�nţ�ĺs�u2�eP��R�{��2:�߰'֍��R.�������f�к=F�qbݬ�{��4D�vou|o�xw��r���7����c�i<1��������S�<
2f��l<�פֿ�����v���F�~���]dz��*`��������=��� U0�鞯���x=T����
�P������7���.�������eQY_	����S	������I�ੂ��"��z�/é[-����y��(Ә������=�Ə�P������\�3p(^t����3^
Y�8Ԯ�ڂ|ǡu��M=P��RF�ơu�+I2�w%׬��o�d��qh]��qh]������{�8������:?�Zg�v����|9��qh]�vMY��p�b\o���U��7ph��ߝ���YJ1^j��8��6}d�8���7�M1P��R:�ơu��a;N�O   I[�m|G	��CV�Q����m�E��k|2pb�xB���������O6D��Bp'���c~q��m�C�����Rpb�Ϋo�)�\��� o�
.F�^�֭�C�������7n�
.�"�Qp��Qp�5Zg�٫-����&�aQp��Aqf���3�xR�Y�^�qf���ӟ��z\̗z�̨ά�wr⧍In�
.��,|ph]ꭧ�ų�6(�xy!�ơu~V���A�EǏϲ/���ue{ɶG��+8�8���֭�C����G�8���OdZ���D��x���=h�\q�r�n�s2ֹ���q~V���E�E�}4�4�T�4��)�YL^?Vz�����E�f�Hjq���w87�}Ri| �E���E�|�+/��nx7�}�o�@�������p`^�e��W�͋[5)�d8��Qy��z�W�oj��Ap�XL|�p���%��C�[(8��\>������ui�.�Z���22��h8�ί�Z�������HBQ|����U��������֝��8���<�O]椥����(7��)�G{ǡu��N�;F}������&��f�'�D�K ��h�N�|:��y�L��X�ǡb�,�'��������O������j5�(�S�n<*N��$8�(ϊS�n�(ͳ��Nr��$�P>(�k|{�8}�м/��ͳ�����g5_��W|�6Y A��ApT܊��IPQ�Nn��6^y�-��B��<�o�[�;x"�������ߎ��7���'��x���wH\!xP��7���'qEU�}I��t���šz�l�yi�������+&����C�o�f;$�<(����;��?�n{����_T�8�+��C�<)�����p�к�W�C�|;uк�N����S�{�8�n#{�غ��쎓�Bp=u$�\O�+�SG�2K[��;��mrO�
��Ļ�o����x�kY��m4�͐Ib!xP����Qq"ފ'�IdQf��I��k�n��D�Y	B�O���b�y����^_�8�n���T�hg���}���L2�h'|P�x7�M��������y���G�[L���#
.ƒΩ��g2��CցC��2���{�|6���Aq��}��Ѓ�84�FZ���b4�Ο�NC��Է�R��J3��Go��Vg�}�83�e;���q�H���4��Ń�̸/g���$:�8S�oϜ�_���Ե�ED��,V�i�qh��4n�"�,�ާ���ιY���rVY2�����(���9p�\�}�DMV0�����:+8S.�.6z�)�Ń�(�X�8S��Κ�3��v�L�/�<��9i�3o�
U�xPZ��Qqh݃'šu���=x%/�ToZw�\|�к�����;�;��s�wZw��ʦ�(��5h����u�KG��zo�N'������&�(�x�H2h�y�m3���;c�IO�xP�)�ţ�L�^�7�]��Q6�q��;Δ��Aq�\�B+�Q4���{�;���^���6�C�D�ݩ�8�.�%���zX�͈���C�<*�s��ġu�<����V74�hb���LZw�w�a�"�&V<(�;wi'�s{�+yQ4��Aqh��?t�C�|kZ��Qqhݵ����]{W9qhݾ�yX�͈���z�g���M3���}X�͈��^۝8�P0��Aq�\v�·��(�X�8s.G�Y��R�����8s.�Qzkm݆(�Jtܵn8L%r_�]gÇU�0���Aqh��A����6H�T"� r��:?DY��C�\�
i�qh�}�C����a$�Ń�к�+�` �œ�кϊC��(�{�8��=�OZw��}�к�[�qh���X����&��]��������a&������C�l2_�ٸUXL0�x�4t�P9�1hh�{�4��i��vL0���fLǙp��L�X$G�#M�	W�o�4�	W�K�gƕ��y;��c��D����3犟�X}���"�C�ܛ;�(L0��$����<$�oo3��R���8��ܷzV0�D�����C�.ߺu�0�(��8�n�xXi��i:���G'͔�w�Z=����Ɏ�8��mi�U�K0��nW�ęr�mJ�8S���T��^���K0���Aq����3�j�<O�Ϥ�/�dǡu����s;{�/���@����v���=��:�n�z�a"�œ�غ��w��:��kL$�xPZw��j��J &�H��]���D��G ��`"Q�#���u���G� ����:�6<ph�_�8�ί�Zw�!�ġu׾�{��:o�M�` �7��r�;͜�3:��6%#qD=f-�v��c��#n~��Hw����uX����M�H$q���wxw���w��y�ߴ�n=~���T����7��7��}����m~F���ߏ��Կ菿�Կ������7�����%�$�o�-	(n~?��S������IDq�%�[�$�P~k����Qy���'�����=|Q����U������\?6t������$�P>*��s3��s����&O�+nm�
zfX��)��'O�+����S���Ek�e%A3�,n~�O����<������2�-��S����L����n���y���_4��w���y������v_V�5�C�8��ƣ�T�O��C�8U�Ƌ�Լ��C�m������fa��.^�x_>(���QyhޗO�C��|V��y���ydܼ	�<�����'QF烛8[E�L���ת�����׋_v����Ay�_�K�M����������S��;�:��LR���'����O�8u�����s&���ߥ؅���G+�I�q���w������<���79�8t&��͟��S�܇�O����o\Ͽ���$����w��W��<�Ͼ=d��
Tg�q��~������5��3x��e��;�=vV�:��C��<��W��|�y����C� 8�9<��I�ax��i����$�P>(���Qy(_<�ŷ��d��|1��m� i��Ay(ߗ��C�����x��yy;�K���&��=xT����[��L��~�л�~�P��ކ�u��Ө����8��b� �����4�x�8�����к�ݰVn:Ӕ�t7���u�����].��rәF~����u��'ua���)+W�Q�!|P�x�>�5y"��[�ļɟ�#c�D�0���;ՇU��(�X�8Q/̪��o���4K_1�r��+V��l#�_��[/(�X�u(ރGšw�-�Y��r���7}ǡu���p1ph]���e8�.��ɁC�����Kw�к��*]�h|;���e��?ph]���
������u�|0Z�W���v�ġu����Y�傲�0�gY����G�3��tVV$��,����zǡu��uh�+;2qb]�c\�dVc��$c�[o3pb]酵�֋�ĺ���v�XW懏>�ub�({��R(�(o����u���ۉ��+���� �����qh]��Eǡu��R(�(��Lǡu�|ǡuV�M��j�e�m��8�.V<(����[�ڂ���6�Z�>�<qh���)�Zܻe��;�;�6��]��m�C�Ey{�8���o8
,k%��*��W�xP�X��Qqb݊'ŉu+�'֭xQ�X��Uqb݊���V�R�X7q��:������t֡�b��:�S��Z�b�W�PJ��j
)���0pn��.���uۻ,��|;uܺ��CŊ�����W��]8P��^8P��^8Pt|��;plݽ�������[�6o�<pl޾!x�ؼ}?o�QH��y�������o���      y   C   x�3�����LUp�Sp�I��Sa�3Ə���2�tJ-.�wbN~zjQvbf�@��� 1z\\\ ��K�      �   ;   x�M�� ��m�NvsM�@�u�'���$e����L�v����'���m��!�� n\
�      �   �  x���K�%�DǯW�+0�r�x�&�԰Xj�%��Qm�ɡ�4��w��Lf?�]>�G��?}���/�~���}�S�}�t���ٷ/����������l|�a�7�M9�o8;�����qVz���|e�N���[l�l�!؊��Kl�2�[a����Q?�5�&o��uy{-C��[ަ�ͷ�-y[oy����v����m^��N��bw�$��9^���tx-Wgם���_�Q�J��(oe�tN��Rl:)�[9��x+ɖ����d�J_K����$[��ޚ(k��[�x���k��������Sk�{������ξ����+�3����+�3�yI�ʠ���&Y{s̺�)O����o?���?>��������~���?�~���8��4g�u���l��+�<�m��W6����+��������%Àa�0a8����Hz�L`(���P��n2���e�͔(s�aʀ�A�Qi�2��#|-��G�};�lh�3b����� N��36��A��G���쏏ryc�ah_0�o�ݙ�|�`�(0tT:�%��E�c� �1a� y� y� y1)>t��t��t��t��
t�i�h�h�h�h(]��h�W�"�@Zm]h�	t��&P~C��B���_F�JY0`1�eYLzY0d1�eA�c�����`b����鲀0��,�S��a0rE'���ޥ����5@�1� y�y�y�y8������Fn���чabta=��E�q�?M�iX�G*ļ�$���`�\P#�C{�E��.fQ<�Y�$�?M��j>@�tY,�ZQ/�q-�kp��Y��E��TSB�V�ݐ���*$k��
�
�B��#R�g�OV����`�	j�ִe��l��l[,ǖ�X�OU��
�� p�C����1-o��>%,Ӗ˲�m[��؂^۰��n����RR/����e(ra���+��+��+�☹����)Q��������)a1�S*�b�
���R#?�",Fn���[��ȭ�b��b�g�#7t������(73�y;:Q��щb�N#w�1rG'�}��N�r�><�/�^V�ռ�c5.�X�Θ�=�*h#�� �9�1����0FY`h2��fl�yͶ�Wȩ�e�޶��cF��� �t�!�"b&>_71ݚ�^�@P;zH�=I˶�~�-��}�~�;$�����L��
�=<T����a02�KF�01���s��`^�N�v��Ӱ`�f�t�8�!�w�=�m`C�e���px��WK��Sb���I��ny�q薑+��^Q��2r%��Q��62+�6rňn#�Vo#�Vo#�V�#�Vo#�2o#�2o#�2#�2#�2#�2#������c00��^͋^����V���h�1X��û���dX0t�L�q��`z���Wز�Ta��z>�<=����5�Ր�N�!�;�V��j�U�j���j�iP�cdL�Q��jb�T��j`�\����4���4��8f��ĥ�¥��1���uH�R<�n)R7��!uc!7ց!mK񒴥�H�Rl$l)ҵ�Z
�T�Q��1��D�˰!Qc��S}HӘ�C��DR4����1͇��!9��k��J˸��OP@.%��kHɸ�2.�����!!�� ��� *� �>��4)>t�\:���0��$�0� C}>J ����ChW8�B�*�J#��r#4�l�B�\
�9�B�jB�#����\�V�Bk�l��؇j��!Ѫ�#�}��v���ɪ\���Q��\	��c��\U�{F�U�g�ZU�{F�U�g�ZU�{Ʊ�,Ԫ�e�8���s3���eμ\��U�2g�dմ̙�Yu���Ь�>34K����w�a02*�,FF	���5p#C�f12f�,FF]���ЬY��R9�j�,FF�����4�Ā�K5/P�qARMͱ�xϛ�񎏲��
�xGY��o����xGa�;�;*�,���^w�n�v��c02�ی��6#3��Ȍn72&F��уn^t��M�uӢ?�q�hFA�\O�������f���:;�K���Js0$��#���ƚB"�Z��mN��1/8Ñ�24=��t�k��܆��t0C�Z:��e-����N��>�s,���TSB�dA�B�O�22h����e^�,�d� ˰�0+&KHZ�^͐�F��۫���5��EkT��֨F3����u�����frzd��P���d/��д��^hZKE/4�����R�;�C��h�i-����-�
Ek����+D̬��R�Z�hmsf�P����B�Zږ�����v�=�m�[Д������B���e����?�F3E3)��i�LY��</oeQ��7Z�ū��xU���*R��"�ʮ*R�(=L�l��,L~_���+��Ĉn6!��Q(���%�_) *�Bb)Ӆ�j��fP4�ӅĊ�ӅĊ��t!��cO�{���t334�̌M73�����t33<�̌O73VA��
����
Z��X�af45������vh#�����	�ik�B�:�1+d�s�Bƴ��@L��<����0�����������$�k����-���͡b=�s�X�������"�{�����!d=��22����ebl��2q�ߘ���M����&�~~m�K&�w̯������<���
E�i�B�zZ��д�V �xO�(�����X!j=�7V�Z�zc��i)I�Ff�#3
�� >&~��e��yƝ0�v�`��aS�����w���t��C�z�`ٺM,�����!k�`���v�`���u�`����`-��̨����p3#7v13⴫��]͌8�jf��]͌Z���Qw��a02rlW#�mW#7~��Ⱥ݌�������/�^6�͸�c3.��L�J�ҕՖҥ+�-9HWV����3I7]Pm�tA���j���jK��Ֆ��Xfw#��Ā���nlô@��0+���ơ�ƥ���ƥs�-�K�4[*��i���#S*��i�T.��l�\:��ҹtN�����������idf�22�r�Y��̬\FfV.#3+��ٔ�ْ�ِ�َy��6.Z٦�Hm�b��p�fK�����9C��E�R"�61["�61["�61["�e��3C)���>Ff(���cd����<Ff(���cd��\FF(�ed�s��`�C���<`0/6.�5-�5�3tG"������>�tFt$r���H���ݑȥ��)��*�}$ri#y$r�~�H�xu��ASM�j`�T���VӢ�jX��O;9P>�c��m�Ò��_)[ꮔ-�V�ƹ}|����43��h��/�y}$l��G��Y}����>R�4�����~��}>���%���^0�Q����p���9��s����A+�;GoR��9zVZ	���3a�����gV���w�$�ck43���L?+F3������(43�d�lޯ���?���~��4�v�Sf�5���N��w)�5ˏK8m�_�p�,3s�,3����;�����<��X\�����~o����f���l3cqy�����̸�=�̸�=�̸�=�̸�=�̸�=�~`�s?�13�fϹ���������׳�ױ����y���x
p�����㺟f�uE���n����%oX�-xO�6������WH��:2,�[ בa)��Pe������*]�2��Ÿ�c1-ސâ�Ŭ�r���l6�rl6Y96[��'�R$�8i�t'|�(U���(���~�z�c�c���q�����a�y1n͸h���6�bܚY1nz��@��E��q�O;��Q��vߧ���vr�z3��
��|��E�&y)����i<]�$l)�,bx�pYn�nᒰ1,~T�/�ܚ�W@M�+���t1��i^l%dm^�ދ]~�ڼ�6/�:Tm^�����������
M�����6��+4m�aɥ�|Mq�}_S\!h���t������ӧ� -g�      {   r   x�u���0��}�)�v�D'��sTm�AQ��(�$�Iw�im��J�u"a�����P��U���Gz���G^���r ��ئ�P����dub˥վ�J+�3�����I-�      �   
  x��Ms�:�׭_�˙�)
a����@.E�C�[�Q�N쉰R����i7sj���h�^I�薺[L�~'�f�l��$|X��zWڼmUQ��l�yY�@��L�(��m7��(�:�ϵ��y��vkڐa��qLV��ǳ���й��]��2|����u9��2i�*qh����&]X"�Y(�I�a-u����nI[	���K^���<O3��n�E%�.M�--kUV��c <Z8�+��̀���C�mhY�`be��%N�zQ��]\�a\VJk�C|����!�h��-�[�n��%��m-�����ty	�#C�''	g�E������~�p&�Rq\
P�]�)S���1�m��	�c����d��G�\W�΍���K������	?���([��8�qd���uZ���پ��ύ�!�`E>9����T�U�3(�}3V6,�Y���Z���*6��i�Ƿ�]eJ�$7�l�U�Y���O�~S67�fm��[tq��˺�p��?KL���&�|���U���Y&��UߏA �VQ��ި!�����3�D��8Nq��b�Ǝ !��rX�=�Ih�l�I144�'�L�皛�,���`q2YI�	K .ʨ3S|H|4v����!�`���8�
A�>|�(����(���ψ~�X�ZM%��<�0�G��y����]�P�UyY�(�m��Y���� ��@������0a�����hV�V�D�w�aY)U:#��aK�h?�����rԅ��S�+\H������E���fq�"��N����xe���D�<���(�i� ��$u]��cW�݂(����b�;F���dN� ��v+�7�n%�>6�ܹ�Z+��I"JN�F�V��i���������Hq<��Bm\>� ܞSe?�ܥ�ߕ"!����lwE��:\�^t���^��./pn
���A���Ö !H�#���'B�4c��D��0�4aVK�²����١;/�J�D0������26k$�,���Җ��x��p���wS3�k�a��Q�|�wp��9���;O�Q���w?�f=?I���Z�g��}X���4p�e��D� f��K��w��1c�@�#*��n��"�&g1M�R�e�),վ0z��W}�mE����Y��FJ�&�'�ta������%`�A$�k��3��Q"��;L�L�]�1{���,�s��S�-}h�]�H"X�Z�á����U1I�׉�l�U�Hb����|j�6;���D$}��-Y��$�4��Ϫ��)����<͌fb$��u!g.S��W�O"�s���q��k^pC�������K��A ���,�/"�c0��w2��N����?9�D0(
��b�s�z��k�^� ��>tp(+U6sa�.q����E�0�V�RK��v�./b���*K�f�Ax^�}`%u���OĠ�7.�n]�������0n���b�?L��f�aP��LC���D�G��=X7o+~��8+i�J�=��]��A�e8��1���D/�����p�տi0�Q8Kx~��ĕ@����$�y����B=��0�iF��(��g��
� ���,��\��@B����'b}f-1f����91`V��0��+���IĠ�&_Y��{����@��=�� ��g����c%����m��.�����E<�䶬paU����u.���INd�]\��s��������y��0�༃CkvG���.�q����*c��V����ɭV��@b*��~�q����(� ��|��c���� �x�	m��j:S��XSe{|<�ZV��%9�m���{����I��ws������"��]���z� �AKSr��1�ى^�Wr�wǤ>U�dU��0r���ʞu�ys`p�z�"}X��i��Q� !�I��'��ua)�kd
 ,�3��*66O_�(�����E|���a=�?1`��|1a�kw�6����l��b��h�C�ӑ��+�kGbp+��E�ADv"�F�e8a��D�<8� �^�<xB <��<�}~��pf�PU�����E�c�:ϧf�a4�}M�)� �`��������At<K�ᣪ*}�ǡa�"��\e���k1�������7�o��H;m���"1���׈,&Y�0��x�sM����_$��k�f�='�Yr|u�x0Ц�0���gaq/�ar���3�@X�s��57�C����EJ�!?� r����8��:߸k���ݴ����#�d,�ݚvDbl����R�[��A�3��I�L�$���:8�]TR�jA�뻧�$~�A�Xş|�����<��L1�[�m�Ovb�iK����>?���[F^#W� ���PZK\�����^�������{�
��yJ3bZU��y.b�p&��ܥG�^.Ġ�����$��{���|;x/�����t�>H_.�A �4k��"p��z���X���4���pT[�)M� ��v+��߉�$a���!� ���      }      x������ � �         I   x�3�����LUp�Sp�I��Sa�3ƏS���@�� H�A�FƆ
���p)K�+MhW�pr��qqq ��J�     