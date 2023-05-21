-- select * from tbl_m_book tmb;

-- INSERT INTO tbl_m_user (id_tamu, column2, column3, ...)
-- VALUES (1, 3232323, dandi, admin,dlsad,asdsdasda);
-- 
-- INSERT INTO tbl_m_user (column1, column2, column3, ...)
-- VALUES (value1, value2, value3, ...);



-- SELECT c(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column_name(s)
-- ORDER BY column_name(s);

-- SELECT COUNT(*) AS Jumlah_Produk FROM tbl_m_book tmb ;


-- SELECT COUNT(column_name) AS alias_name FROM table_name WHERE conditions;


-- select * from tbl_m_book tmb 
-- inner join tbl_m_warehouse tmw on tmb.id_tmw  = tmw .id_tmw 
-- order by tmb.name_book_tmb;


-- tentang count
select 
  tmw.name_tmw ,
  count(tmb.id_tmw) as jumlah_buku 
from tbl_m_book tmb 
inner join tbl_m_warehouse tmw on tmb.id_tmw = tmw.id_tmw 
group by tmw.name_tmw;



-- tentang sum


select 
  tmw.name_tmw ,
  ( sum(tmb.price_book_tmb) * tmb.stock_tmb  ) as total_harga_buku_perkategori 
from tbl_m_book tmb 
inner join tbl_m_warehouse tmw on tmb.id_tmw = tmw.id_tmw 
group by tmw.name_tmw;

select 
  tmw.name_tmw ,
  sum(tmb.price_book_tmb) as total_harga_buku_perkategori 
from tbl_m_book tmb 
inner join tbl_m_warehouse tmw on tmb.id_tmw = tmw.id_tmw 
group by tmw.name_tmw;


-- tentang average
select 
  tmw.name_tmw ,
  sum(tmb.price_book_tmb) as total_harga_buku_perkategori 
from tbl_m_book tmb 
inner join tbl_m_warehouse tmw on tmb.id_tmw = tmw.id_tmw 
group by tmw.name_tmw;


-- tentang minmax

