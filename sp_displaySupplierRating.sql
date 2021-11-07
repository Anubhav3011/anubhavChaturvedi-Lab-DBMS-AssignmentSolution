CREATE DEFINER=`root`@`localhost` PROCEDURE `displaySupplierRating`()
BEGIN

	select supplier.supp_id, supplier.supp_name, rating.rat_ratstars, 
	case 
		when rating.rat_ratstars > 4 then 'Genuine Supplier'
		when rating.rat_ratstars > 2 then 'Average Supplier' 
		else 'Supplier should not be considered' 
	end as Verdict
	from supplier inner join rating on rating.supp_id=supplier.supp_id;

END