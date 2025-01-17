PGDMP  "                	    |            ProductsPetCare    16.4    16.4 M    D           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            E           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            F           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            G           1262    16410    ProductsPetCare    DATABASE     �   CREATE DATABASE "ProductsPetCare" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 !   DROP DATABASE "ProductsPetCare";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            H           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16412    animals    TABLE     f   CREATE TABLE public.animals (
    animalid integer NOT NULL,
    animalname character varying(100)
);
    DROP TABLE public.animals;
       public         heap    postgres    false    4            �            1259    16411    animals_animalid_seq    SEQUENCE     �   CREATE SEQUENCE public.animals_animalid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.animals_animalid_seq;
       public          postgres    false    4    216            I           0    0    animals_animalid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.animals_animalid_seq OWNED BY public.animals.animalid;
          public          postgres    false    215            �            1259    16419 
   categories    TABLE     �   CREATE TABLE public.categories (
    categoryid integer NOT NULL,
    categoryname character varying(100),
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.categories;
       public         heap    postgres    false    4            �            1259    16418    categories_categoryid_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_categoryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.categories_categoryid_seq;
       public          postgres    false    218    4            J           0    0    categories_categoryid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.categories_categoryid_seq OWNED BY public.categories.categoryid;
          public          postgres    false    217            �            1259    16455 	   customers    TABLE     �  CREATE TABLE public.customers (
    customerid integer NOT NULL,
    image character varying(255),
    fullname character varying(100),
    email character varying(255),
    passwordhash character varying(100),
    phonenumber character varying(15),
    address character varying(255),
    roleid integer,
    registrationdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.customers;
       public         heap    postgres    false    4            �            1259    16454    customers_customerid_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_customerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customers_customerid_seq;
       public          postgres    false    224    4            K           0    0    customers_customerid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customers_customerid_seq OWNED BY public.customers.customerid;
          public          postgres    false    223            �            1259    16483    orderdetails    TABLE     �   CREATE TABLE public.orderdetails (
    orderdetailid integer NOT NULL,
    orderid integer,
    productid integer,
    quantity integer,
    price integer
);
     DROP TABLE public.orderdetails;
       public         heap    postgres    false    4            �            1259    16482    orderdetails_orderdetailid_seq    SEQUENCE     �   CREATE SEQUENCE public.orderdetails_orderdetailid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.orderdetails_orderdetailid_seq;
       public          postgres    false    4    228            L           0    0    orderdetails_orderdetailid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.orderdetails_orderdetailid_seq OWNED BY public.orderdetails.orderdetailid;
          public          postgres    false    227            �            1259    16470    orders    TABLE     �   CREATE TABLE public.orders (
    orderid integer NOT NULL,
    customerid integer,
    orderdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    totalamount integer,
    status character varying(100)
);
    DROP TABLE public.orders;
       public         heap    postgres    false    4            �            1259    16469    orders_orderid_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.orders_orderid_seq;
       public          postgres    false    226    4            M           0    0    orders_orderid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.orders_orderid_seq OWNED BY public.orders.orderid;
          public          postgres    false    225            �            1259    16508    payments    TABLE     �   CREATE TABLE public.payments (
    paymentid integer NOT NULL,
    orderid integer,
    paymentmethod character varying(100),
    paymentdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    paymentamount integer
);
    DROP TABLE public.payments;
       public         heap    postgres    false    4            �            1259    16507    payments_paymentid_seq    SEQUENCE     �   CREATE SEQUENCE public.payments_paymentid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.payments_paymentid_seq;
       public          postgres    false    230    4            N           0    0    payments_paymentid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.payments_paymentid_seq OWNED BY public.payments.paymentid;
          public          postgres    false    229            �            1259    16427    products    TABLE     �  CREATE TABLE public.products (
    productid integer NOT NULL,
    productname character varying(100),
    categoryid integer,
    animalid integer,
    description text,
    price integer,
    stockquantity integer,
    image character varying(100),
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updateat timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.products;
       public         heap    postgres    false    4            �            1259    16426    products_productid_seq    SEQUENCE     �   CREATE SEQUENCE public.products_productid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.products_productid_seq;
       public          postgres    false    220    4            O           0    0    products_productid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.products_productid_seq OWNED BY public.products.productid;
          public          postgres    false    219            �            1259    16448    roles    TABLE     `   CREATE TABLE public.roles (
    roleid integer NOT NULL,
    rolename character varying(100)
);
    DROP TABLE public.roles;
       public         heap    postgres    false    4            �            1259    16447    roles_roleid_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_roleid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.roles_roleid_seq;
       public          postgres    false    4    222            P           0    0    roles_roleid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.roles_roleid_seq OWNED BY public.roles.roleid;
          public          postgres    false    221            �            1259    16521 	   shipphing    TABLE     �   CREATE TABLE public.shipphing (
    shippingid integer NOT NULL,
    orderid integer,
    shippingmethod character varying(100),
    shippingstatus character varying(100),
    trackingnumber character varying(100),
    estimateddeliverydate date
);
    DROP TABLE public.shipphing;
       public         heap    postgres    false    4            �            1259    16520    shipphing_shippingid_seq    SEQUENCE     �   CREATE SEQUENCE public.shipphing_shippingid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.shipphing_shippingid_seq;
       public          postgres    false    232    4            Q           0    0    shipphing_shippingid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.shipphing_shippingid_seq OWNED BY public.shipphing.shippingid;
          public          postgres    false    231            x           2604    16415    animals animalid    DEFAULT     t   ALTER TABLE ONLY public.animals ALTER COLUMN animalid SET DEFAULT nextval('public.animals_animalid_seq'::regclass);
 ?   ALTER TABLE public.animals ALTER COLUMN animalid DROP DEFAULT;
       public          postgres    false    216    215    216            y           2604    16422    categories categoryid    DEFAULT     ~   ALTER TABLE ONLY public.categories ALTER COLUMN categoryid SET DEFAULT nextval('public.categories_categoryid_seq'::regclass);
 D   ALTER TABLE public.categories ALTER COLUMN categoryid DROP DEFAULT;
       public          postgres    false    218    217    218                       2604    16458    customers customerid    DEFAULT     |   ALTER TABLE ONLY public.customers ALTER COLUMN customerid SET DEFAULT nextval('public.customers_customerid_seq'::regclass);
 C   ALTER TABLE public.customers ALTER COLUMN customerid DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16486    orderdetails orderdetailid    DEFAULT     �   ALTER TABLE ONLY public.orderdetails ALTER COLUMN orderdetailid SET DEFAULT nextval('public.orderdetails_orderdetailid_seq'::regclass);
 I   ALTER TABLE public.orderdetails ALTER COLUMN orderdetailid DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    16473    orders orderid    DEFAULT     p   ALTER TABLE ONLY public.orders ALTER COLUMN orderid SET DEFAULT nextval('public.orders_orderid_seq'::regclass);
 =   ALTER TABLE public.orders ALTER COLUMN orderid DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16511    payments paymentid    DEFAULT     x   ALTER TABLE ONLY public.payments ALTER COLUMN paymentid SET DEFAULT nextval('public.payments_paymentid_seq'::regclass);
 A   ALTER TABLE public.payments ALTER COLUMN paymentid DROP DEFAULT;
       public          postgres    false    230    229    230            {           2604    16430    products productid    DEFAULT     x   ALTER TABLE ONLY public.products ALTER COLUMN productid SET DEFAULT nextval('public.products_productid_seq'::regclass);
 A   ALTER TABLE public.products ALTER COLUMN productid DROP DEFAULT;
       public          postgres    false    220    219    220            ~           2604    16451    roles roleid    DEFAULT     l   ALTER TABLE ONLY public.roles ALTER COLUMN roleid SET DEFAULT nextval('public.roles_roleid_seq'::regclass);
 ;   ALTER TABLE public.roles ALTER COLUMN roleid DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16524    shipphing shippingid    DEFAULT     |   ALTER TABLE ONLY public.shipphing ALTER COLUMN shippingid SET DEFAULT nextval('public.shipphing_shippingid_seq'::regclass);
 C   ALTER TABLE public.shipphing ALTER COLUMN shippingid DROP DEFAULT;
       public          postgres    false    231    232    232            1          0    16412    animals 
   TABLE DATA           7   COPY public.animals (animalid, animalname) FROM stdin;
    public          postgres    false    216   '[       3          0    16419 
   categories 
   TABLE DATA           I   COPY public.categories (categoryid, categoryname, createdat) FROM stdin;
    public          postgres    false    218   R[       9          0    16455 	   customers 
   TABLE DATA           �   COPY public.customers (customerid, image, fullname, email, passwordhash, phonenumber, address, roleid, registrationdate) FROM stdin;
    public          postgres    false    224   \       =          0    16483    orderdetails 
   TABLE DATA           Z   COPY public.orderdetails (orderdetailid, orderid, productid, quantity, price) FROM stdin;
    public          postgres    false    228   �^       ;          0    16470    orders 
   TABLE DATA           U   COPY public.orders (orderid, customerid, orderdate, totalamount, status) FROM stdin;
    public          postgres    false    226   �_       ?          0    16508    payments 
   TABLE DATA           a   COPY public.payments (paymentid, orderid, paymentmethod, paymentdate, paymentamount) FROM stdin;
    public          postgres    false    230   2a       5          0    16427    products 
   TABLE DATA           �   COPY public.products (productid, productname, categoryid, animalid, description, price, stockquantity, image, createdat, updateat) FROM stdin;
    public          postgres    false    220   �a       7          0    16448    roles 
   TABLE DATA           1   COPY public.roles (roleid, rolename) FROM stdin;
    public          postgres    false    222   �g       A          0    16521 	   shipphing 
   TABLE DATA              COPY public.shipphing (shippingid, orderid, shippingmethod, shippingstatus, trackingnumber, estimateddeliverydate) FROM stdin;
    public          postgres    false    232   �g       R           0    0    animals_animalid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.animals_animalid_seq', 2, true);
          public          postgres    false    215            S           0    0    categories_categoryid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.categories_categoryid_seq', 9, true);
          public          postgres    false    217            T           0    0    customers_customerid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customers_customerid_seq', 28, true);
          public          postgres    false    223            U           0    0    orderdetails_orderdetailid_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.orderdetails_orderdetailid_seq', 42, true);
          public          postgres    false    227            V           0    0    orders_orderid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.orders_orderid_seq', 28, true);
          public          postgres    false    225            W           0    0    payments_paymentid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.payments_paymentid_seq', 3, true);
          public          postgres    false    229            X           0    0    products_productid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.products_productid_seq', 29, true);
          public          postgres    false    219            Y           0    0    roles_roleid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.roles_roleid_seq', 2, true);
          public          postgres    false    221            Z           0    0    shipphing_shippingid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.shipphing_shippingid_seq', 3, true);
          public          postgres    false    231            �           2606    16417    animals animals_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.animals
    ADD CONSTRAINT animals_pkey PRIMARY KEY (animalid);
 >   ALTER TABLE ONLY public.animals DROP CONSTRAINT animals_pkey;
       public            postgres    false    216            �           2606    16425    categories categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (categoryid);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    218            �           2606    16463    customers customers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customerid);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    224            �           2606    16488    orderdetails orderdetails_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_pkey PRIMARY KEY (orderdetailid);
 H   ALTER TABLE ONLY public.orderdetails DROP CONSTRAINT orderdetails_pkey;
       public            postgres    false    228            �           2606    16476    orders orders_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orderid);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    226            �           2606    16514    payments payments_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (paymentid);
 @   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
       public            postgres    false    230            �           2606    16436    products products_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (productid);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    220            �           2606    16453    roles roles_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (roleid);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    222            �           2606    16526    shipphing shipphing_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.shipphing
    ADD CONSTRAINT shipphing_pkey PRIMARY KEY (shippingid);
 B   ALTER TABLE ONLY public.shipphing DROP CONSTRAINT shipphing_pkey;
       public            postgres    false    232            �           2606    16464    customers customers_roleid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_roleid_fkey FOREIGN KEY (roleid) REFERENCES public.roles(roleid);
 I   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_roleid_fkey;
       public          postgres    false    224    4750    222            �           2606    16489 &   orderdetails orderdetails_orderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid);
 P   ALTER TABLE ONLY public.orderdetails DROP CONSTRAINT orderdetails_orderid_fkey;
       public          postgres    false    4754    228    226            �           2606    16494 (   orderdetails orderdetails_productid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid);
 R   ALTER TABLE ONLY public.orderdetails DROP CONSTRAINT orderdetails_productid_fkey;
       public          postgres    false    4748    228    220            �           2606    16477    orders orders_customerid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customers(customerid);
 G   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_customerid_fkey;
       public          postgres    false    224    226    4752            �           2606    16515    payments payments_orderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid);
 H   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_orderid_fkey;
       public          postgres    false    226    230    4754            �           2606    16442    products products_animalid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_animalid_fkey FOREIGN KEY (animalid) REFERENCES public.animals(animalid);
 I   ALTER TABLE ONLY public.products DROP CONSTRAINT products_animalid_fkey;
       public          postgres    false    216    220    4744            �           2606    16437 !   products products_categoryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_categoryid_fkey FOREIGN KEY (categoryid) REFERENCES public.categories(categoryid);
 K   ALTER TABLE ONLY public.products DROP CONSTRAINT products_categoryid_fkey;
       public          postgres    false    4746    218    220            �           2606    16527     shipphing shipphing_orderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipphing
    ADD CONSTRAINT shipphing_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid);
 J   ALTER TABLE ONLY public.shipphing DROP CONSTRAINT shipphing_orderid_fkey;
       public          postgres    false    226    232    4754            1      x�3�t�8��ˈ����|�=... <�z      3   �   x�3��x�{e��<N##]K]CSCS+CK+Cc=#sS3.#�#��qla&>�Ɯ��w-�S8�0�:� ��K�3�n�k�)�sƑ�\��Û�����j�Oŧ��҇�'&+�@h�bC]C##++C=c#C�=... g�L	      9   �  x�ŕ�kA�ϳ���0������(��b)��&Kv%����z.��X<,EԂ �����#��o�ѦC)ޒ��}>�}�f���N�����0��{<��Or>��&o�~V��k�$��N���F���x�&�^<�����s&�6�u�O|�����(o�y���b�o�Ň<�t69d�P�^���C�A	�&t:@���Nҟ��AeH�Ɵ�^Z�c�~����Ad2r64Z!0r\���ӃR�5j���ǜ�25��Vj���J���j,�RUd.*Ccۂ�4�Ok|��j-WѬ�����RX��V:w��� ��Y/�;�q�\��I���0
�JH�Y�o��T2���r#�I��'��f�Ǘy0����I��2��)�Cèk&��n�?JG|zX��aYr�(���^��cޠ�G��36�_��u�g8�sZ��}V>� � �t^[��P
d�0�@0�k%�� M a�`�5z=���/zz���=��U��)����,�t}69�j�X~�9й��� ��i��-�h���R��R��CR�FSv3�G]"(m)$��h��2$��s���@��
��d��#�W�#
+M�+& ��j����j����B*g%�b��Q�c��Q� ��(=e�F8I���8H��41�;(@���fㆌzܥ�?��]D�x����K��t`��nhi{ބBYc�O�"�_���      =   �   x�]��� E�R�?���_��0cH�&\�$\ؗ�xH"��#Rlx4R������=�8��Y���k?d�ڱWZ��+�k���n�@ �s�mͷ�{�:P6�����ɂ=L(��d���*��]#�>���##�8�d��#X�,Z�C_ח� 9E5�X[����h���!���]^�L7S/��l�����K-4����9�`F�� j�__      ;   \  x�}�;N�@���)�Y�����p��"FBNC��H 
�\���\$7a 8q�j������  P Y��@u�KE��4fÃ�v�}r�������AiO��c�����k׵��M�0��߽.��s��Z�����!��i٭��f�v�j0��İ@t�UBe��� '�b�t2�`u���Y������>�r^���#F+k%�) ��(��$�O$�`�Ie�%ۛ�m(0�+��+RV>4<Nu4���>�`�ӲӤ�j�	/9s}:Ҹ�C�A=�����Ø�a6��CCv,��@U�#Q�1�2O�ڱ�#0Y���2���QQ��|�4_v�s      ?   �   x�3�4��x�k�B��y
)w/�K�4202�5��54Q04�26�20�45 .#N#ΰ�k�L�|��=O����(���A����9�9�3J+�n�S����kq�B^��Ey
���edeh
�k�+F��� tj0�      5   �  x��XKo�6>K���X$E�ukR�(����@�-�v�R������s��(� 5|
���E�����9����?�Ү��v�S�k�!�q�ጉ�]�|?@��
�>�s��V�|��4�S*ka��X�W���b�Ï?�jy�袠����*����h����^
���W;��]�,�B4(vQP<R�)l6�"t�]�n�?�C�NI�`����D)��J��(��HT��~��74�uG���0Z�hJ�������F1eK/a���aף����9����1f0�QFtʴ�V�¤ݎ:�ŋ��L0��r�'P��Ǩ�.z,��v֢��Y6���8 ��M�)"�r��2�A`�{��#�|7w��d|�ю�ä���Z�SK��OR�C.�&����'���>���2����e�#(=9JO�	���}������TF����b���P- Rߡ/����"�$�<�xI��?KLr1����u�2�� �k��aT�^�g�9�2�{"�(v7�����FS���/�CҐ4�'�h+Ҿ�X^�4���f�"D��ׯwD?A�Yo�o������@W�^�ـ 3~�*ѵ�Y���V���4\�6��:�f*�v�L	�z�F(�|c����^�]�u�����iX&v�	���iؘsK�T�R�Ryhm̸x�h��Z�I- �II��Ti��rX���t�s�A���Ŧ �F��IA~��`S��`����y?E�*�=���$��Q��*L���ʄ����E����U��l\Y�f,�Rc�I�������S��$�l3I%���0NN��"f3��:��=f�b�-z̚�)4������,�&�6��301)qt�ݩ�	I�
s��vcY��!HA�`G�n2n������<64����Ե�XWa˰\˴]��6D�fl�٫LnQ�ο�*0�nK�^u�K���¢Ʀ��n�Y���L�S6��Sˤ���z�\51�ߵ8!�s=f�umR�u�T��wo�;x;�T;���E�4�K�\G�z�e3pݩ����?�Uu�Y"�cY2��t>k*pn9����,�s��\ף^g�Ӊ��%���iP Mu� "��5��u�c�:��� <F�
�~�J��?�P��*����mcZ����yݵ`�� F����z��ٙ��(ҩ�}JV�64�u�*�_I�ۨ[�����aE:�5I���3������[�b{��
�14�}����zW@�Pn���V}�Խ<������5jT��tkW"�KT�'�� �B; B�2_�I����|ט��esf�B�86��<k�^.��&;�h�\oԖ6V�%C�ҝb�r3Q��9�����x�<}���� �B�Q��b�&F_�.X�A5�K��`��h�2�ޚ��Z�Y
�}9�2j`Ek�M"�i��/���      7      x�3�tL����2�-N-����� 6��      A   t   x�3�4�t�L�W�8� /]!/#1/��ȄD ;(����ghdlbj�id`d�k`�kh�e�i���$��R��҇�V�5^��mnai`h��l�e�iL�F3Sc#C�&s�=... i3�     