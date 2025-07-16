/*
I own a shopping center in a busy part of town and want to organize my records.
I'd like to keep track of the lease terms I have with my tenants in summary form so that I don’t have to keep referring back the 50+ page lease whenever I need to recall details.
There are 20 units. 1-10 on the ground floor are storefronts and 11-20 on the 2nd floor are offices.
Old tenants, whose lease has expired/moved out should have an inactive status but don’t delete them, as I may need to reference historic records. 
However, I don't need/want to keep track of tenants that left before I took over the property back in 2012.

I want the following data summarized:
Business/Tenant name 
Name of contact person/business owner
Email address/Phone number of contact
Unit number
Square footage of unit (rentable space)
Lease effective date
Rent effective date, if different than lease
Lease end date
Yearly increase rate- can be a percentage or set dollar amount, can also be n/a
Month to apply increase- usually the month after the “lease end” (eg, if lease ends may 31, month of increase is June), but can be different
Current Basic rent amount
Additional Rent/CAM (common area maintenance)
Total monthly rent (basic + additional rent. Please make this calculate automatically)
Date late fee applies
Late fee rate
Options to renew (if any)
Security Deposit amount
Additional notes


Reports:
1) I would like to be able to see a list of current tenants. 
2) For those whose leases are due to expire within the next 6 months - I just need the name, contact info and lease end date- sorted by end date (more recent end dates on top)
3) A list of those tenants whose rent needs to be increased next month.
4) It would also be great to be able to analyze the average current rent for offices vs. Store fronts

Q: What is the earliest date a lease could have begun? 
A: I don't know, I bought the property back in 2012, but some of the units were already occupied. 

Q: Can a tenant leave before the lease ends?
A: Ideally not, but it does happen when a tenant is extremely unhappy- or doesn't pay the rent and gets evicted, then I try to lease the unit to a new tenant as soon as possible.

Q: Can a tenant renew or extend their lease?
A: But of course! I always hope that they do. If they reamin in the same unit, even if terms of the lease change, I don't need to keep a separate record of the old terms, 
just the old least start date, so that I know when they originally moved in. However, if they want to move into a different vacant unit, then I would want it to be a completely new record.

Q: Does a lease ever cover two or more units?
A: Interesting question. I have never had that so far. I suppose that if a tenant would want 2 adjacent units, it can be done.

Q: following up on the previous question, if a tenant would want 2 units, would they sign 2 seperate leases?
A: No, it would be combined in one lease.

Q: Do you ever have 2 tenants occpuying a single unit?
A: No. There are some very large units and I sometimes allow my tenants to sublet their space if it's too big for their own needs, (provided that it's specified in the lease)
but I only rent out each unit to one person/business and I don't keep track of which tenants sublet.

Tenant		Email 	Phone Number	Unit #	current/old	SF	Original Lease Effective date	Current lease effective date, if different	Rent effective date	Lease Expiration	Increase Rate	month to apply increase	Current Rent	Cam	total	date to apply late fee	late fee rate or amount	Options to renew	Security	Notes
DeLorenzo's	douglas	delostheburg@gmail.com		1	current	3250	4/1/2022			3/31/2027	3.50%	April	 $4,791.04 	 $1,286.46 	 $6,077.50 	 5th of month 	5%	 2, 5 years each 	11,239.58	
Fog City Vapor	Ken	fogcityvaporlevittown@gmail.com		2	current	6151	6/30/2015	6/30/2017	7/1/2015	7/1/2027	add $1000 to monthly rent	July	 $14,352.00 	 $335.87 	 $14,687.87 	 5th of month 	5%	 1, 10 year 	3600	used option to renew
GoPuff	David	Facilities@gopuff.com	8482504400	3	current	3628	10/1/2018			10/31/2028	3% or market value- whichever is more	November	 $6,334.00 	 $2,507.21 	 $8,841.21 	 10th of month 	5%	 none 	6334	
3 Rivers Bar	David	david.reeves@gopuff.com	8482504400	4	current	2350	3/1/2023			3/31/2028	3%	November	 $6,000.00 	 $874.79 	 $6,874.79 	 3rd of month 	5%	 2. 5 years each 	2210	
Music Forte	Chris	musicforte85@gmail.com	2158337572	5	current	11269	12/1/2021		10/16/2022	10/31/2027	3%	October	 $27,233.00 	 $890.95 	 $28,123.95 	 5th of month 	5%	 none 	5000	Do not increase until end of first lease term 2025. After that increase each April
Natural Nail Bar	Thomas	thomasvphung@gmail.com	2154310009	6	current	2030	11/1/2020			11/2/2025	3%	November	 $6,485.00 	 $2,000.00 	 $8,485.00 	 5th of month 	5%	 none 	1564	NO CAM
Nationwide Insurance	Jordan	jordan@jordanroseninsurance.com	2155192392	9	current	760	12/1/2014	1/1/2019	1/1/2015	12/31/2024	3%	January	 $1,222.00 	 $263.00 	 $1,485.00 	 5th of month 	15%	 none 	9865	
Stages Academy	Deena	deena@thestagesacademy.com	2157521391	10	current	9000	5/1/2022	5/1/2023	10/1/2022	10/31/2028	3%	November	 $9,550.83 	 $4,457.77 	 $14,008.60 	 10th of month 	5%	 none 	2656	
State Farm Insurance	Joe	joe.veiga.jw73@statefarm.com	2159451900	11	current	1518	11/7/2022		11/3/2022	10/31/2023	4%	November	 $1,676.63 	 $507.44 	 $2,184.07 	 3rd of month 	5%	 none 	6582	
Step II	pat	stepiidance@yahoo.com		12	current	2075	10/1/2014			10/31/2024	5% every other year	November	 $2,247.92 	 $752.08 	 $3,000.00 	 5th of month 	5%	 none 	6541	
The Little Gym	Bob	rmg1556@gmail.com		14	current	4275	9/1/2023			9/30/2026	none	October	 $4,275.00 	 $1,692.19 	 $5,967.19 	 5th of month 	5%	 none 	3513	
The Five Four Bar	Joe	jagriffin72@gmail.com		15	current	5368	12/1/2023		11/15/2022	11/30/2027	3%	December	 $5,784.41 	 $2,139.90 	 $7,924.31 	 5th of month 	5%	 none 	1234	
Tower Health Urgent Care	Denise	Kirsten.steppke@towerhealth.org	7329010456	16	current	4460	3/1/2020			2/28/2025	3%	March	 $11,538.53 	 $1,765.42 	 $13,303.95 	 3rd of month 	5%	 none 	2162	
USPS	Rush	rushshah5582@gmail.com	2154310325	1	old	3250	11/1/2017		12/1/2017	11/30/2022	2%	December	 $1,866.67 	 $554.16 	 $2,420.83 	 10th of month 	5%	 none 	2121	Was evicted in Jan 2022 because was not paying rent
M&R Pharmacy	Jake	m&r@pharmacy.com	7186330522	2	old	6151	4/1/2013		4/19/2013	4/20/2015	4%	May	 $12,365.21 	 $2,721.17 	 $15,086.38 	 5th of month 	5%	2, 3 years each	2162	
*/