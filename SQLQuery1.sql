select * from ref_property (nolock) where vendor_id = '100028552'

select count(*) from ref_organization (nolock) 

select id_org, vendor_code from ref_organization (nolock) where id_org = '1'

select * from property_vendor_mapping (nolock) where id_org = '29710'

select vendor_mapping_id, property_Id, id_org from property_vendor_mapping (nolock) where vendor_mapping_id = '35280'

select Property_Id, property_code from ref_property (nolock) where Property_Id = '390799'
