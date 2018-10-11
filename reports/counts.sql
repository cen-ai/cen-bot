SET @tableSchema = 'programy';
SET SESSION group_concat_max_len = 10000000;
SET @rowCounts = (
  SELECT group_concat(CONCAT('SELECT ''',TABLE_NAME,''', COUNT(*) FROM ', TABLE_NAME) SEPARATOR ' union all ')
  FROM information_schema.tables WHERE table_schema = @tableSchema
);
SET @rowCounts = (   SELECT group_concat(CONCAT('SELECT ''',TABLE_NAME,''', COUNT(*) FROM ', TABLE_NAME) SEPARATOR ' union all ')   FROM information_schema.tables WHERE table_schema = @tableSchema );
PREPARE statement FROM @rowCounts;
EXECUTE statement;

select groupid,count(*) from categories group by groupid;

select "all" as groupid,count(*) from categories;

SELECT 
    table_name, 
    table_rows 
FROM 
    INFORMATION_SCHEMA.TABLES
where 
	table_name in ("categories","maps","sets","rdfs","normals")
Order by table_name

;


