
SELECT count(*)
FROM campaign;

SELECT count(*)
FROM category;

SELECT count(*)
FROM contacts;

SELECT count(*)
FROM subcategory;

SELECT cam.cf_id,
    cam.cont_contact_id,
    concat(con.first_name,' ',con.last_name) full_name_contact,
    cam.cat_category_id,
	cat.category,
    cam.subcat_subcategory_id,
	sub.subcat,
	cam.company_name,
    cam.description,
    cam.goal,
    cam.country,
    cam.launched_date,
    cam.end_date
FROM 
	campaign cam,
	contacts con,
	category cat,
	subcategory sub
WHERE cam.cont_contact_id = con.contact_id
AND   cam.cat_category_id = cat.category_id
AND	  cam.subcat_subcategory_id = sub.subcat_id