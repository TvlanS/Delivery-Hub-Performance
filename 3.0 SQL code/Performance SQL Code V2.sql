USE practice;

SELECT DATE(convert_tz(s.scan_datetime ,'+00:00','+08:00')) AS "DATE" , h.name AS "NAME",
CASE 
	WHEN o.parcel_size_id = "0" THEN "XXSMALL"
    WHEN o.parcel_size_id = "1" THEN "XSMALL"
    WHEN o.parcel_size_id = "2" THEN "MEDIUM"
	WHEN o.parcel_size_id = "3" THEN "LARGE"
	WHEN o.parcel_size_id = "4" THEN "XLARGE"
	WHEN o.parcel_size_id = "5" THEN "JUMBO"
    
END AS "PARCEL SIZE"   
, count(*) AS COUNTS
FROM
	scans s 
JOIN 
	orders o ON o.id = s.order_id
JOIN
	hubs h ON s.hub_id = h.hub_id
WHERE 
	o.tracking_number NOT IN("TEST") 
    and
    h.region = "East Malaysia"
    and
	DATE(convert_tz(s.scan_datetime ,'+00:00','+08:00')) between "2024-12-01" and "2024-12-15"
GROUP BY 
	DATE(convert_tz(s.scan_datetime ,'+00:00','+08:00')) , h.name , o.parcel_size_id 
ORDER BY 
h.name ,  DATE(convert_tz(s.scan_datetime ,'+00:00','+08:00')) , "PARCEL SIZE"  ;
