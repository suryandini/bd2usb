PGDMP         -                {         
   penjualan1    14.6    14.6                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    40987 
   penjualan1    DATABASE     m   CREATE DATABASE penjualan1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE penjualan1;
                postgres    false            �            1259    41002    barang1    TABLE     �   CREATE TABLE public.barang1 (
    id_barang integer NOT NULL,
    nama_barang character varying NOT NULL,
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang1;
       public         heap    postgres    false            �            1259    41016    pembayaran1    TABLE     �   CREATE TABLE public.pembayaran1 (
    id_pembayaran integer NOT NULL,
    tgl_bayar date,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran1;
       public         heap    postgres    false            �            1259    40995    pembeli1    TABLE     �   CREATE TABLE public.pembeli1 (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying NOT NULL,
    jk character(1),
    no_telp integer,
    alamat character varying
);
    DROP TABLE public.pembeli1;
       public         heap    postgres    false            �            1259    40988 	   supplier1    TABLE     �   CREATE TABLE public.supplier1 (
    id_supplier1 integer NOT NULL,
    nama_supplier character varying NOT NULL,
    no_telp integer,
    alamat character varying(100)
);
    DROP TABLE public.supplier1;
       public         heap    postgres    false            �            1259    41009 
   transaksi1    TABLE     �   CREATE TABLE public.transaksi1 (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying
);
    DROP TABLE public.transaksi1;
       public         heap    postgres    false                      0    41002    barang1 
   TABLE DATA           S   COPY public.barang1 (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    211   �                 0    41016    pembayaran1 
   TABLE DATA           Z   COPY public.pembayaran1 (id_pembayaran, tgl_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    213   x                 0    40995    pembeli1 
   TABLE DATA           Q   COPY public.pembeli1 (id_pembeli, nama_pembeli, jk, no_telp, alamat) FROM stdin;
    public          postgres    false    210   �                 0    40988 	   supplier1 
   TABLE DATA           Q   COPY public.supplier1 (id_supplier1, nama_supplier, no_telp, alamat) FROM stdin;
    public          postgres    false    209   E                 0    41009 
   transaksi1 
   TABLE DATA           ^   COPY public.transaksi1 (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    212   !       p           2606    41008    barang1 barang1_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.barang1
    ADD CONSTRAINT barang1_pkey PRIMARY KEY (id_barang);
 >   ALTER TABLE ONLY public.barang1 DROP CONSTRAINT barang1_pkey;
       public            postgres    false    211            t           2606    41020    pembayaran1 pembayaran1_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.pembayaran1
    ADD CONSTRAINT pembayaran1_pkey PRIMARY KEY (id_pembayaran);
 F   ALTER TABLE ONLY public.pembayaran1 DROP CONSTRAINT pembayaran1_pkey;
       public            postgres    false    213            n           2606    41001    pembeli1 pembeli1_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.pembeli1
    ADD CONSTRAINT pembeli1_pkey PRIMARY KEY (id_pembeli);
 @   ALTER TABLE ONLY public.pembeli1 DROP CONSTRAINT pembeli1_pkey;
       public            postgres    false    210            l           2606    40994    supplier1 supplier1_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.supplier1
    ADD CONSTRAINT supplier1_pkey PRIMARY KEY (id_supplier1);
 B   ALTER TABLE ONLY public.supplier1 DROP CONSTRAINT supplier1_pkey;
       public            postgres    false    209            r           2606    41015    transaksi1 transaksi1_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.transaksi1
    ADD CONSTRAINT transaksi1_pkey PRIMARY KEY (id_transaksi);
 D   ALTER TABLE ONLY public.transaksi1 DROP CONSTRAINT transaksi1_pkey;
       public            postgres    false    212            v           2606    41060    barang1 fk_barang1_transaksi1    FK CONSTRAINT     �   ALTER TABLE ONLY public.barang1
    ADD CONSTRAINT fk_barang1_transaksi1 FOREIGN KEY (id_barang) REFERENCES public.barang1(id_barang) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.barang1 DROP CONSTRAINT fk_barang1_transaksi1;
       public          postgres    false    211    211    3184            w           2606    41065     transaksi1 fk_barang1_transaksi1    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi1
    ADD CONSTRAINT fk_barang1_transaksi1 FOREIGN KEY (id_barang) REFERENCES public.barang1(id_barang) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.transaksi1 DROP CONSTRAINT fk_barang1_transaksi1;
       public          postgres    false    211    3184    212            u           2606    41055    barang1 fk_supplier1_barang1    FK CONSTRAINT     �   ALTER TABLE ONLY public.barang1
    ADD CONSTRAINT fk_supplier1_barang1 FOREIGN KEY (id_supplier) REFERENCES public.supplier1(id_supplier1) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.barang1 DROP CONSTRAINT fk_supplier1_barang1;
       public          postgres    false    209    211    3180            x           2606    41070 %   pembayaran1 fk_transaksi1_pembayaran1    FK CONSTRAINT     �   ALTER TABLE ONLY public.pembayaran1
    ADD CONSTRAINT fk_transaksi1_pembayaran1 FOREIGN KEY (id_transaksi) REFERENCES public.transaksi1(id_transaksi) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.pembayaran1 DROP CONSTRAINT fk_transaksi1_pembayaran1;
       public          postgres    false    3186    213    212               |  x�e��n�0����L�!о�nBAmF���~'?���Hǎ���B��u�5��%�����4���GRq�ӛ�ε�; 倢ź3��
zC~t���u�ՠkZ�c�s��OrK�:�S<^�l�v�'�nfK~�t�\�7�z���G�IqA�J������x��k\q�܉�ZP���ܛ�t���b��2UVAˊ|��F�ܠ���Ic"^����9�U�F �������d�r�;���R��������71(�Jp`��O;��E�Y��Ȯ	h��|�X� U�s���W2`E�a|�%����y�Ÿ��pEcu,�~ɀ�.�a���:`��f��Ö��^��F,ZlH��J�겭e��
RU�Y�L��>?����Ȥk           x�M���� D�3��-ur���S>�+l�GՐh�c��{R1�jk	t����犬{�۪��:��ܚ�=6XBq{e����ܺl�!�t"�c3W��m\c�d�	�MY@7��MYp���M7eA��ա,ha��sBY���6eAwcM�IUp� ��$��Q�g����
T�,���9U�	���pW�r�߀����Z�q�����Z@�
�cm�T�=�� U����o�cLE�<ƵG�(�R�M}�s���_���Տ
         �  x�u�Mn�0���)��,K�Y�;f-ˆ4� E6�.� i���B���.��=>���� �+�+Y�j���eUÄSK��sp��eqxE�`��i����������񇕒k�����ܱ<��n��YX�������
��?�N�gB�=������f�����xl����H��з�w��UU�,|���H�ᶇK��;U���tw�&�RpX�n�?�C7���R���R����*�lpCb�1�T�B�t6j���p�5�w�Sk'�qh��\�՞�fίp����x��4O}���G����(�nQ0d|�E8�De�r��vf"�%����r�-�`.�}����]���ǚ�����W�n"���/J8�AiJ�יP>^�eYd����>�)Q���bOc,�:���,˾ 
Ơ         �  x�}�Ɏ�0@��W��w=�&M�M�A�^�Ցٰ�ח��z�A���G
����������4��0��W��oy����z��d��mq�o���������C�O��~O�A	v�T����Y�r<|�)5NӹllQy]nJ�uţ9 �����5,D�Z���<��V�ͭ�`� _�����g6�(��,��/����K.<�d#/Ҍ2�L�UU�L%i����y >ٸ�w��(��$U�j:��O��$J�/��E��,Ȕ�j9��tL��A��)&ϔTU݀2M�%[gi�G��z��w�Y:Ak0� ;2�$�Wը�LU��qYX�'M�ă�4.b�'Q��O3"M��u��h�)y27.�f�Ϧ++��;
��J,͒�US*Yz����(M��&~�L�.vjtg�R�\��oJ�{8���_����'��_�_�         *  x�U�Kn!����]����u�l���lr�:��H�d�3�3�qA_"_�Dʖ������}[��BL,I?�Є�X,�>B�ؒvXX�E�L�	-�
��L	5�	���!r�Cva�����!¾1V�h� �iU�02
ixx ��2$�@� d`ިB�6�ߞ*���[��� ,{�F� ��D� l��[��� 쁈��o� �q��r�ζP�<�!0oT!`�W���l��*��ٸ�B�V�v�`�V�~�`���ȧ��l����ll\z����'��     