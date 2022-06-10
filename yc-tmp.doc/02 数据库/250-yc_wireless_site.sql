DROP TABLE IF EXISTS yc_site;
CREATE TABLE yc_site (
	id					VARCHAR(100)	NOT NULL	COMMENT 'ID',
physicalplansiteid	VARCHAR(64)	NOT NULL	COMMENT 'Site ID',
snnn	VARCHAR(100)	NULL	COMMENT 'S/N',
longitude	DECIMAL(10,7)	NULL	COMMENT 'Longitude',
latitude	DECIMAL(10,7)	NULL	COMMENT 'Latitude',
areatype	VARCHAR(100)	NULL	COMMENT 'Area Type',
sitetype	VARCHAR(100)	NULL	COMMENT 'Site Type',
siteclassification	VARCHAR(100)	NULL	COMMENT 'Site Classification',
bands	VARCHAR(100)	NULL	COMMENT 'Bands',
area	VARCHAR(100)	NULL	COMMENT 'Area',
region	VARCHAR(100)	NULL	COMMENT 'Region',
province	VARCHAR(100)	NULL	COMMENT 'Province',
city	VARCHAR(100)	NULL	COMMENT 'City/Municipality',
barangay	VARCHAR(100)	NULL	COMMENT 'Barangay',
height	DECIMAL(10,0)	NULL	COMMENT 'Height(m)',
towertype	VARCHAR(100)	NULL	COMMENT 'Tower Type',
cohoming	VARCHAR(100)	NULL	COMMENT 'CO Homing',
distance	DECIMAL(19,10)	NULL	COMMENT 'Distance(km)',
mwantennaheight	VARCHAR(100)	NULL	COMMENT 'MW antenna height',
mwremark	VARCHAR(100)	NULL	COMMENT 'MW Remarks',
mwsitetype	VARCHAR(100)	NULL	COMMENT 'MW site type',
atnqty03m	VARCHAR(100)	NULL	COMMENT '0.3m ATN Qty.',
atnqty06m	VARCHAR(100)	NULL	COMMENT '0.6m ATN Qty.',
atnqty09m	VARCHAR(100)	NULL	COMMENT '0.9m ATN Qty.',
atnqty12m	VARCHAR(100)	NULL	COMMENT '1.2m ATN Qty.',
atnqty18m	VARCHAR(100)	NULL	COMMENT '1.8m ATN Qty.',
atnqty24m	VARCHAR(100)	NULL	COMMENT '2.4m ATN Qty.',
fibersite0229	VARCHAR(100)	NULL	COMMENT 'Fiber Site',
transmission	VARCHAR(100)	NULL	COMMENT 'Transmission',
ranodcodf	VARCHAR(100)	NULL	COMMENT 'RAN ODC ODF',
powersupplycabinet	VARCHAR(100)	NULL	COMMENT '40U Power Supply cabinet',
equipmentcabinet	VARCHAR(100)	NULL	COMMENT '40U equipment cabinet',
liibatterycabinet	VARCHAR(100)	NULL	COMMENT '40U Li-I Battery Cabinet',
liibattery	VARCHAR(100)	NULL	COMMENT '150Ah Li-I Battery',
rectifier	VARCHAR(100)	NULL	COMMENT '50A Rectifier',
dcdu	VARCHAR(100)	NULL	COMMENT 'DCDU',
fms	VARCHAR(100)	NULL	COMMENT 'FMS',
cabinetqty	VARCHAR(100)	 NULL	COMMENT 'Cabinet qty',
backuptime	VARCHAR(100)	NULL	COMMENT 'Backup time',
acpowercapacity	VARCHAR(100)	 NULL	COMMENT 'AC Power Capacity(kW)',
transformer	VARCHAR(100)	 NULL	COMMENT 'Transformer（KVA)',
altitude	VARCHAR(100)	 NULL	COMMENT 'Altitude',
buildingheightrt	VARCHAR(100)	NULL	COMMENT 'Building Height(RT)',
ditopriority	VARCHAR(100)	NULL	COMMENT 'DITO Priority',
priorstatus	VARCHAR(100)	NULL	COMMENT 'Status',
citiespriority	VARCHAR(100)	NULL	COMMENT '6 Cities Priority',
prioritybaseline	VARCHAR(100)	NULL	COMMENT 'Priority(Baseline)',
priority2020v2	VARCHAR(100)	NULL	COMMENT 'Priority(2020v2)',
rfppriority	VARCHAR(100)	 NULL	COMMENT 'RFP Priority',
friendlysite	VARCHAR(100)	NULL	COMMENT 'Cooperation Site',
uicprivatesite	VARCHAR(100)	 NULL	COMMENT 'UIC - Private Site',
saqclustering	VARCHAR(100)	NOT NULL	COMMENT 'SAQ Clustering',
saqvendor	VARCHAR(100)	NOT NULL	COMMENT 'SAQ Vendor',
saqponumber	VARCHAR(100)	NULL	COMMENT 'SAQ PO Number',
tssdddvendor	VARCHAR(100)	NULL	COMMENT 'TSS/DDD Vendor',
tssdddponumber	VARCHAR(100)	NULL	COMMENT 'TSS/DDD PO Number',
cmevendor	VARCHAR(100)	NULL	COMMENT 'CME Vendor',
cmeponumber	VARCHAR(100)	NULL	COMMENT 'CME PO Number',
pwrvendor	VARCHAR(100)	NULL	COMMENT 'PWR Vendor',
pwrponumber	VARCHAR(100)	NULL	COMMENT 'PWR PO Number',
twvendor	VARCHAR(100)	NULL	COMMENT 'TI Vendor',
twponumber	VARCHAR(100)	NULL	COMMENT 'TI PO Number',
sarfissued	DATETIME	NULL	COMMENT 'SARF Issued',
surveydoneplan	DATETIME	NULL	COMMENT 'Survey Done Plan',
surverydone	DATETIME	NULL	COMMENT 'Survey Done',
sarsubmittedplan	DATETIME	NULL	COMMENT 'SAR Submitted Plan',
sarsubmittedoptiona	DATETIME	NULL	COMMENT 'SAR Submitted Option A',
sarsubmittedoptionb	DATETIME	NULL	COMMENT 'SAR Submitted Option B',
sarsubmittedoptionc	DATETIME	NULL	COMMENT 'SAR Submitted Option C',
sarsubmittedoptiond	DATETIME	NULL	COMMENT 'SAR Submitted Option D',
sarsubmittedoptione	DATETIME	NULL	COMMENT 'SAR Submitted Option E',
sarsubmittedoptionf	DATETIME	NULL	COMMENT 'SAR Submitted Option F',
sarsubmitted	DATETIME	NULL	COMMENT 'SAR Submitted',
sarapprovedplan	DATETIME	NULL	COMMENT 'SAR Approved Plan',
sarapprovedoptiona	DATETIME	NULL	COMMENT 'SAR Approved Option A',
sarapprovedoptionb	DATETIME	NULL	COMMENT 'SAR Approved Option B',
sarapprovedoptionc	DATETIME	NULL	COMMENT 'SAR Approved Option C',
sarapprovedoptiond	DATETIME	NULL	COMMENT 'SAR Approved Option D',
sarapprovedoptione	DATETIME	NULL	COMMENT 'SAR Approved Option E',
sarapprovedoptionf	DATETIME	NULL	COMMENT 'SAR Approved Option F',
sarapproved	DATETIME	NULL	COMMENT 'SAR Approved',
mocsignedplan	DATETIME	NULL	COMMENT 'MOC Signed Plan',
mocsignedoptiona	DATETIME	NULL	COMMENT 'MOC Signed Option A',
mocsignedoptionb	DATETIME	NULL	COMMENT 'MOC Signed Option B',
mocsignedoptionc	DATETIME	NULL	COMMENT 'MOC Signed Option C',
mocsignedoptiond	DATETIME	NULL	COMMENT 'MOC Signed Option D',
mocsignedoptione	DATETIME	NULL	COMMENT 'MOC Signed Option E',
mocsignedoptionf	DATETIME	NULL	COMMENT 'MOC Signed Option F',
mocsigned	DATETIME	NULL	COMMENT 'MOC Signed',
mocsubmitted	DATETIME	NULL	COMMENT 'MOC Submitted',
mocapprovedplan	DATETIME	NULL	COMMENT 'MOC Approved Plan',
mocapproved	DATETIME	NULL	COMMENT 'MOC Approved',
nrafsubmitted	DATETIME	NULL	COMMENT 'NRAF Submitted',
nrafapprovedplan	DATETIME	NULL	COMMENT 'NRAF Approved Plan',
nrafapproved	DATETIME	NULL	COMMENT 'NRAF Approved',
approvedoption	VARCHAR(100)	NULL	COMMENT 'Approved Option',
sisitetype	VARCHAR(100)	 NULL	COMMENT 'SI Site Type',
silongitude	DECIMAL(10,7)	 NULL	COMMENT 'SI Longitude',
silatitude	DECIMAL(10,7)	 NULL	COMMENT 'SI Latitude',
streetbuilding	VARCHAR(100)	NULL	COMMENT 'Street/Building',
actbarangay	VARCHAR(100)	NULL	COMMENT 'SI Barangay',
citymunicipality	VARCHAR(100)	NULL	COMMENT 'SI City/Municipality',
siprovince	VARCHAR(100)	 NULL	COMMENT 'SI Province',
completesiteaddress	VARCHAR(255)	NULL	COMMENT 'Complete Site Address',
lessorname	VARCHAR(100)	NULL	COMMENT 'Lessor Name',
lessorcontact	VARCHAR(100)	 NULL	COMMENT 'Lessor Contact',
lessoraddress	VARCHAR(100)	 NULL	COMMENT 'Lessor Address',
typeoflessor	VARCHAR(100)	 NULL	COMMENT 'Type of Lessor',
tinnn	VARCHAR(100)	 NULL	COMMENT 'TIN',
bankaccountname	VARCHAR(100)	 NULL	COMMENT 'Bank Account Name',
banknamebranch	VARCHAR(100)	 NULL	COMMENT 'Bank Name & Branch',
bankaccountnumber	VARCHAR(100)	 NULL	COMMENT 'Bank Account Number',
periodoflease	VARCHAR(100)	 NULL	COMMENT 'Period of Lease',
monthlyrent	VARCHAR(100)	 NULL	COMMENT 'Monthly Rent',
taxprovision	VARCHAR(100)	 NULL	COMMENT 'Tax Provision',
vatamount	VARCHAR(100)	 NULL	COMMENT 'VAT Amount(12%)',
whtamount	VARCHAR(100)	 NULL	COMMENT 'WHT Amount(5%)',
escalationrate	VARCHAR(100)	 NULL	COMMENT 'Escalation Rate',
advancerental	VARCHAR(100)	 NULL	COMMENT 'Advance Rental',
securitydeposit	VARCHAR(100)	 NULL	COMMENT 'Security Deposit',
modeofpayment	VARCHAR(100)	 NULL	COMMENT 'Mode of Payment',
leasearea	VARCHAR(100)	 NULL	COMMENT 'Lease Area',
neighborsconsent	DATETIME	 NULL	COMMENT 'Neighbors Consent',
noneighborscertificate	DATETIME	 NULL	COMMENT 'No Neighbors Certificate',
nameofsubdivisionhoa	DATETIME	 NULL	COMMENT 'Name of Subdivision/HOA',
nameofhoapresident	DATETIME	 NULL	COMMENT 'Name of HOA President',
hoapresidentcontactno	DATETIME	 NULL	COMMENT 'HOA President Contact No.',
hoaclearancesecured	DATETIME	 NULL	COMMENT 'HOA Clearance Secured',
brappliedplan	DATETIME	 NULL	COMMENT 'BR Applied Plan',
brapplied	DATETIME	 NULL	COMMENT 'BR Applied',
bcsecured	DATETIME	 NULL	COMMENT 'BC Secured',
bcsecuredplan	DATETIME	 NULL	COMMENT 'BR Secured Plan',
brsecured	DATETIME	 NULL	COMMENT 'BR Secured',
propdocsstartedplan	DATETIME	 NULL	COMMENT 'Property Documents Plan',
taxdeclarationsecured	DATETIME	 NULL	COMMENT 'Tax Declaration Secured',
taxclearancesecured	DATETIME	 NULL	COMMENT 'Tax Clearance Secured',
tctsecured	DATETIME	 NULL	COMMENT 'TCT Secured',
conceptualdrawingsigned	DATETIME	 NULL	COMMENT 'Conceptual Drawing Signed',
lessorinformationsheet	DATETIME	 NULL	COMMENT 'Lessor Info Sheet Signed',
segregationplansigned	DATETIME	 NULL	COMMENT 'Lot Segregation Plan Signed',
lessorid				DATETIME	 NULL	COMMENT 'Lessor ID',
landclassification	VARCHAR(100)	 NULL	COMMENT 'Land Classification',
propdocsdoneplan	DATETIME	 NULL	COMMENT 'Property Docs Done Plan',
propertydocscompleted	DATETIME	 NULL	COMMENT 'Property Docs Completed',
draftcolplan	DATETIME	 NULL	COMMENT 'Draft COL Plan',
draftcolsigned	DATETIME	 NULL	COMMENT 'Draft COL Signed by Lessor',
leasepackagesubmitted	DATETIME	 NULL	COMMENT 'Lease Package Submitted',
colreviewedbylegal	DATETIME	 NULL	COMMENT 'COL Reviewed by Legal',
colapprovedbyLegal	DATETIME	 NULL	COMMENT 'COL Approved by Legal',
cspfsubmitted	DATETIME	 NULL	COMMENT 'CSPF Submitted',
cspfapproved	DATETIME	 NULL	COMMENT 'CSPF Approved',
colsignedbydito	DATETIME	 NULL	COMMENT 'COL Signed by DITO',
colsignedbylessor	DATETIME	 NULL	COMMENT 'COL Signed by Lessor',
colsignedplan	DATETIME	 NULL	COMMENT 'COL Signed Plan',
colsignedbybothparties	DATETIME	 NULL	COMMENT 'COL Signed by Both Parties',
rfpsubmitted	DATETIME	 NULL	COMMENT 'RFP Submitted',
rfpapproved	DATETIME	 NULL	COMMENT 'RFP Approved',
rentalpaidplan	DATETIME	 NULL	COMMENT 'Rental Paid Plan',
chequereleased	DATETIME	 NULL	COMMENT 'Cheque Released',
chequereceivedbylessorr	DATETIME	 NULL	COMMENT 'Cheque Received by Lessor',
arorsubmittedtodito	DATETIME	 NULL	COMMENT 'AR Submitted',
ndrfpsubmitted	DATETIME	 NULL	COMMENT '2nd RFP Submitted',
ndrfpapproved	DATETIME	 NULL	COMMENT '2nd RFP Approved',
ndchequereleased	DATETIME	 NULL	COMMENT '2nd Cheque Released ',
ndchequereceivedbylessor	DATETIME	 NULL	COMMENT '2nd Cheque Received by Lessor',
ndarsubmitted	DATETIME	 NULL	COMMENT '2nd AR Submitted',
sbtsidoneplan	DATETIME	 NULL	COMMENT 'SBT/SI Done Plan',
sbtsidone	DATETIME	 NULL	COMMENT 'SBT/SI Done',
sbtsireportplan	DATETIME	 NULL	COMMENT 'SBT/SI Report Plan',
sbtsipresubmitted	DATETIME	 NULL	COMMENT 'SBT/SI Pre-Report Submitted',
sbtsireportsubmitted	DATETIME	 NULL	COMMENT 'SBT/SI Report Submitted',
sbtsireportapproved	DATETIME	 NULL	COMMENT 'SBT/SI Report Approved',
tssdoneplan	DATETIME	 NULL	COMMENT 'TSS Done Plan',
tssdone	DATETIME	 NULL	COMMENT 'TSS Done',
tssrsubmittedplan	DATETIME	 NULL	COMMENT 'TSSR Submitted Plan',
pretssrsubmitted	DATETIME	 NULL	COMMENT 'Pre-TSSR Submitted',
tssrsubmitted	DATETIME	 NULL	COMMENT 'TSSR Submitted',
mwpretssrsubmitted	DATETIME	 NULL	COMMENT 'MW Pre-TSSR Submitted',
mwtssrsubmitted	DATETIME	 NULL	COMMENT 'MW TSSR Submitted',
tssrapproved	DATETIME	 NULL	COMMENT 'TSSR Approved',
sbtsitssrapproved	DATETIME	 NULL	COMMENT 'SBT/SI Report & TSSR Approved',
nationalpermitplan	DATETIME	 NULL	COMMENT 'National Permits Plan',
cncapplied	DATETIME	 NULL	COMMENT 'CNC Applied',
cncacquired	DATETIME	 NULL	COMMENT 'CNC Acquired',
dohapplied	DATETIME	 NULL	COMMENT 'DOH Applied',
dohacquired	DATETIME	 NULL	COMMENT 'DOH Acquired',
caapapplied	DATETIME	 NULL	COMMENT 'CAAP Applied',
caapacquired	DATETIME	 NULL	COMMENT 'CAAP Acquired',
natlcompletedplan	DATETIME	 NULL	COMMENT 'National Completed Plan',
lgupermitplan	DATETIME	 NULL	COMMENT 'LGU Permits Plan',
sbspapplied	DATETIME	 NULL	COMMENT 'SB/SP Applied',
sbspacquired	DATETIME	 NULL	COMMENT 'SB/SP Acquired',
lczoningapplied	DATETIME	 NULL	COMMENT 'LC/Zoning Applied',
zoningacquired	DATETIME	 NULL	COMMENT 'Zoning Acquired',
locationalacquired	DATETIME	 NULL	COMMENT 'Locational Acquired',
bpapplied	DATETIME	 NULL	COMMENT 'Building Permit Applied',
electricalpermitsecured	DATETIME	 NULL	COMMENT 'Electrical Permit Secured',
mechanicalpermitsecured	DATETIME	 NULL	COMMENT 'Mechanical Permit Secured',
electronicspermitsecured	DATETIME	 NULL	COMMENT 'Electronics Permit Secured',
fencingpermitsecured	DATETIME	 NULL	COMMENT 'Fencing Permit Secured',
sanitarypermitsecured	DATETIME	 NULL	COMMENT 'Sanitary Permit Secured',
fsecacquired	DATETIME	 NULL	COMMENT 'FSEC Acquired',
bpsecured	DATETIME	 NULL	COMMENT 'Building Permit Secured',
lgucompletedplan	DATETIME	 NULL	COMMENT 'LGU Completed Plan',
rtbplan	DATETIME	 NULL	COMMENT 'RTB Plan',
rtb1	DATETIME	 NULL	COMMENT 'RTB 1',
rtb	DATETIME	 NULL	COMMENT 'RTB 2',
dddsubmittedplan	DATETIME	 NULL	COMMENT 'DDD Submitted Plan',
tedddsubmitted	DATETIME	 NULL	COMMENT 'Pre-DDD Submitted',
tedddapproved	DATETIME	 NULL	COMMENT 'DDD Approved by HX',
cwdddsubmitted	DATETIME	 NULL	COMMENT 'DDD Submitted',
dddapprovedplan	DATETIME	 NULL	COMMENT 'DDD Approved Plan',
cwdddapproved	DATETIME	 NULL	COMMENT 'DDD Approved',
mwpredddsubmitted	DATETIME	 NULL	COMMENT 'MW Pre-DDD Submitted',
mwdddapprovedbyhx	DATETIME	 NULL	COMMENT 'MW DDD Approved by HX',
mwdddsubmitted	DATETIME	 NULL	COMMENT 'MW DDD Submitted',
mwdddapproved	DATETIME	 NULL	COMMENT 'MW DDD Approved',
sttowertype	VARCHAR(100)	 NULL	COMMENT 'Tower Type & Height',
dddapprovedtype	VARCHAR(100)	NULL	COMMENT 'DDD approved type',
towerdeliveryonsiteplan	DATETIME	 NULL	COMMENT 'Tower Delivered on Site Plan',
towerdeliveryonsite	DATETIME	 NULL	COMMENT 'Tower Delivered on Site',
skomplan	DATETIME	 NULL	COMMENT 'SKOM Plan',
skomactual	DATETIME	 NULL	COMMENT 'SKOM',
mobilizationplan	DATETIME	 NULL	COMMENT 'Mobilization Plan',
mobilizationstarted	DATETIME	 NULL	COMMENT 'Mobilization',
excavationplan	DATETIME	 NULL	COMMENT 'Excavation / RT Clean Plan',
excavationsrc	DATETIME	 NULL	COMMENT 'Excavation / RT Clean Started',
excavationrtcleandone	DATETIME	 NULL	COMMENT 'Excavation / RT Clean Done',
foundationpitrepairplan	DATETIME	 NULL	COMMENT 'Foundation Pit Repair Plan',
foundationpitrepairstarted	DATETIME	 NULL	COMMENT 'Foundation Pit Repair Started',
foundationpitrepairdone	DATETIME	 NULL	COMMENT 'Foundation Pit Repair Done',
rebarpreparationplan	DATETIME	 NULL	COMMENT 'Rebar Preparation Plan',
rebarpreparationstarted	DATETIME	 NULL	COMMENT 'Rebar Preparation Started',
rebarpreparationdone	DATETIME	 NULL	COMMENT 'Rebar Preparation Done',
formworkspreparationplan	DATETIME	 NULL	COMMENT 'Formworks Preparation Plan',
formworkspreparationstarted	DATETIME	 NULL	COMMENT 'Formworks Preparation Started',
formworkspreparationdone	DATETIME	 NULL	COMMENT 'Formworks Preparation Done',
leanconcreteplan	DATETIME	 NULL	COMMENT 'Lean Concrete Plan',
leanconcretestarted	DATETIME	 NULL	COMMENT 'Lean Concrete Started',
leanconcretecompletion	DATETIME	 NULL	COMMENT 'Lean Concrete Completed',
rebarsplan	DATETIME	 NULL	COMMENT 'Footing Rebar Plan',
footingrebarstarted	DATETIME	 NULL	COMMENT 'Footing Rebar Started',
rebarformworkre	DATETIME	 NULL	COMMENT 'Footing Rebar Done',
footingformworksplan	DATETIME	 NULL	COMMENT 'Footing Formworks Plan',
footingformworksstarted	DATETIME	 NULL	COMMENT 'Footing Formworks Started',
footingformworksdone	DATETIME	 NULL	COMMENT 'Footing Formworks Done',
footingconcretepourplan	DATETIME	 NULL	COMMENT 'Footing Concrete Pouring Plan',
footingconcretepourstarted	DATETIME	 NULL	COMMENT 'Footing Concrete Pouring Started',
concretepouringcompleted	DATETIME	 NULL	COMMENT 'Footing Concrete Pouring Completed',
footingconcurplan	DATETIME	 NULL	COMMENT 'Footing Concret Curing Plan',
footingconecurstarted	DATETIME	 NULL	COMMENT 'Footing Concrete Curing Started',
footingconecurcompleted	DATETIME	 NULL	COMMENT 'Footing Concrete Curing Completed',
footingfwremovalplan	DATETIME	 NULL	COMMENT 'Footing Formworks Removal Plan',
footingfwremovalstarted	DATETIME	 NULL	COMMENT 'Footing Formworks Removal Started',
footingfwremovaldone	DATETIME	 NULL	COMMENT 'Footing Formworks Removal Done',
columnrebarplan	DATETIME	 NULL	COMMENT 'Column Rebar Plan',
columnrebarstarted	DATETIME	 NULL	COMMENT 'Column Rebar Started',
columnrebardone	DATETIME	 NULL	COMMENT 'Column Rebar Done',
anchorboltsinstaplan	DATETIME	 NULL	COMMENT 'Anchor Bolts Installation Plan',
anchorboltsinstastarted	DATETIME	 NULL	COMMENT 'Anchor Bolts Installation Started',
anchorboltsinstadone	DATETIME	 NULL	COMMENT 'Anchor Bolts Installation Done',
columnfwplan	DATETIME	 NULL	COMMENT 'Column Formworks Plan',
columnfwstarted	DATETIME	 NULL	COMMENT 'Column Formworks Started',
columnfwdone	DATETIME	 NULL	COMMENT 'Column Formworks Done',
pedestalconepouplan	DATETIME	 NULL	COMMENT 'Pedestal Concrete Pouring Plan',
pedestalconepoustarted	DATETIME	 NULL	COMMENT 'Pedestal Concrete Pouring Started',
pedestalconepoucompleted	DATETIME	 NULL	COMMENT 'Pedestal Concrete Pouring Completed',
columnfwremovalplan	DATETIME	 NULL	COMMENT 'Column Formworks Removal Plan',
columnfwremoval	DATETIME	 NULL	COMMENT 'Column Formworks Removal',
backfillingplan	DATETIME	 NULL	COMMENT 'Back Filling Plan',
backfillingstarted	DATETIME	 NULL	COMMENT 'Back Filling Started',
concretecuringbackfilling	DATETIME	 NULL	COMMENT 'Back Filling Completed',
pedesconcurplan	DATETIME	 NULL	COMMENT 'Pedestal Concrete Curing Plan',
pedesconcurstarted	DATETIME	 NULL	COMMENT 'Pedestal Concrete Curing Started',
pedesconcurcompleted	DATETIME	 NULL	COMMENT 'Pedestal Concrete Curing Completed',
sitecleplan	DATETIME	 NULL	COMMENT 'Site Clearing Plan',
siteclecompleted	DATETIME	 NULL	COMMENT 'Site Clearing Completed',
towererestartedplan	DATETIME	 NULL	COMMENT 'Tower Erection Started Plan',
towererectionstarted	DATETIME	 NULL	COMMENT 'Tower Erection Started',
towererectionplan	DATETIME	 NULL	COMMENT 'Tower Erection Completed Plan',
towererectioncompleted	DATETIME	 NULL	COMMENT 'Tower Erection Completed',
fencebasicsplan	DATETIME	 NULL	COMMENT 'Fence Basics Plan',
fencebasicsstarted	DATETIME	 NULL	COMMENT 'Fence Basics Started',
fencebasicscompleted	DATETIME	 NULL	COMMENT 'Fence Basics Completed',
fencemasplan	DATETIME	 NULL	COMMENT 'Fence Masonry Plan',
fencemasstarted	DATETIME	 NULL	COMMENT 'Fence Masonry Started',
fencemascompleted	DATETIME	 NULL	COMMENT 'Fence Masonry Completed',
fencepaintplan	DATETIME	 NULL	COMMENT 'Fence Painting Plan',
fencepaintstarted	DATETIME	 NULL	COMMENT 'Fence Painting Started',
fencepaintcompleted	DATETIME	 NULL	COMMENT 'Fence Painting Completed',
gateinstplan	DATETIME	 NULL	COMMENT 'Gate Installation Plan',
gateinststarted	DATETIME	 NULL	COMMENT 'Gate Installation Started',
gateinstdone	DATETIME	 NULL	COMMENT 'Gate Installation Done',
sitedevplan	DATETIME	 NULL	COMMENT 'Site Development Plan',
sitedevworkscompleted	DATETIME	 NULL	COMMENT 'Site Dev Works Completed',
odupadplan	DATETIME	 NULL	COMMENT 'ODU Pad Plan',
odupadstarted	DATETIME	 NULL	COMMENT 'ODU Pad Started',
odupadcompleted	DATETIME	 NULL	COMMENT 'ODU Pad Completed',
electricalgroundingplan	DATETIME	 NULL	COMMENT 'Electrical & Grounding Installation Plan',
electricalgroinstallstart	DATETIME	 NULL	COMMENT 'Electrical & Grounding Installation Started',
electricalgroundinginstall	DATETIME	 NULL	COMMENT 'Electrical & Grounding Installation Done',
nameofneighbor	DATETIME	 NULL	COMMENT 'Name of Neighbor',
tpasubmittedtodito	DATETIME	 NULL	COMMENT 'TPA Submitted to DITO',
tpasignedbydito	DATETIME	 NULL	COMMENT 'TPA Signed by DITO',
tpcaspca	DATETIME	 NULL	COMMENT 'Tempo Power with Neighbor',
electriccooperative	VARCHAR(100)	 NULL	COMMENT 'Electric Cooperative',
tpcsubmittedtodito	DATETIME	 NULL	COMMENT 'TPC Submitted to DITO',
tpcsignedbydito	DATETIME	 NULL	COMMENT 'TPC Signed by DITO',
tempopowerwithcoop	DATETIME	 NULL	COMMENT 'Tempo Power with COOP',
temporfpsubmitted	DATETIME	 NULL	COMMENT 'Tempo RFP Submitted',
temporfpapproved	DATETIME	 NULL	COMMENT 'Tempo RFP Approved',
temporfpreleased	DATETIME	 NULL	COMMENT 'Tempo RFP Released',
tempopowerplan	DATETIME	 NULL	COMMENT 'Tempo Power Plan',
tempopowerconnected	DATETIME	 NULL	COMMENT 'Tempo Power Connected',
rftiplan	DATETIME	 NULL	COMMENT 'RFTI Plan',
rfti	DATETIME	 NULL	COMMENT 'RFTI',
cwprepat	DATETIME	 NULL	COMMENT 'CW Pre-PAT',
cwpatplan	DATETIME	 NULL	COMMENT 'CW PAT Plan',
cwpatpassed	DATETIME	 NULL	COMMENT 'CW PAT Passed',
postconpermitsplan	DATETIME	 NULL	COMMENT 'Post-Con Permits Plan',
fsicapplied	DATETIME	 NULL	COMMENT 'FSIC Applied',
fsicacquired	DATETIME	 NULL	COMMENT 'FSIC Acquired',
cfeiapplied	DATETIME	 NULL	COMMENT 'CFEI Applied',
cfeiacquired	DATETIME	 NULL	COMMENT 'CFEI Acquired',
opapplied	DATETIME	 NULL	COMMENT 'Occupancy Permit Applied',
opsecured	DATETIME	 NULL	COMMENT 'Occupancy Permit Secured',
postconcompletedplan	DATETIME	 NULL	COMMENT 'Post-Con Completed Plan',
saqfoldersubmitted	DATETIME	 NULL	COMMENT 'SAQ Site Folder Submitted',
saqfolderapproved	DATETIME	 NULL	COMMENT 'SAQ Site Folder Approved',
permanentpowerplan	DATETIME	 NULL	COMMENT 'Permanent Power Plan',
permanentpowerapplied	DATETIME	 NULL	COMMENT 'Permanent Power Applied',
jointinspectionswc	DATETIME	 NULL	COMMENT 'Joint Survey with COOP',
chargeletteracquired	DATETIME	 NULL	COMMENT 'Charge Letter Acquired',
servicecontractsubmitted	DATETIME	 NULL	COMMENT 'Service Contract Submitted',
servicecontractsigned	DATETIME	 NULL	COMMENT 'Service Contract Signed',
powerpaymentrfpsub	DATETIME	 NULL	COMMENT 'Power RFP Submitted',
powerrfpapproved	DATETIME	 NULL	COMMENT 'Power RFP Approved',
powerpaymentplan	DATETIME	 NULL	COMMENT 'Power Payment Plan',
powerpaymentrfprel	DATETIME	 NULL	COMMENT 'Power RFP Released',
lineconstruction	DATETIME	 NULL	COMMENT 'Line Construction',
energizedplan	DATETIME	 NULL	COMMENT 'Energized Plan',
siteenergized	DATETIME	 NULL	COMMENT 'Site Energized',
electricalpat	DATETIME	 NULL	COMMENT 'Electrical PAT',
ntccode	VARCHAR(100)	 NULL	COMMENT 'NTC Code',
l700submitted	DATETIME	 NULL	COMMENT 'L700 Submitted',
l2100submitted	DATETIME	 NULL	COMMENT 'L2100 Submitted',
l2600submitted	DATETIME	 NULL	COMMENT 'L2600 Submitted',
nrsubmitted	DATETIME	 NULL	COMMENT 'NR Submitted',
enbpppsubmitted	DATETIME	 NULL	COMMENT 'eNB PPP Submitted',
l700applied	DATETIME	 NULL	COMMENT 'L700 Applied',
l2100applied	DATETIME	 NULL	COMMENT 'L2100 Applied',
l2600applied	DATETIME	 NULL	COMMENT 'L2600 Applied',
nrapplied	DATETIME	 NULL	COMMENT 'NR Applied',
enbpppapplied	DATETIME	 NULL	COMMENT 'eNB PPP Applied',
l700permitreceived	DATETIME	 NULL	COMMENT 'L700 Permit Received',
l2100permitreceived	DATETIME	 NULL	COMMENT 'L2100 Permit Received',
l2600permitreceived	DATETIME	 NULL	COMMENT 'L2600 Permit Received',
nrpermitreceived	DATETIME	 NULL	COMMENT 'NR Permit Received',
enbpppreceived	DATETIME	 NULL	COMMENT 'eNB PPP Received',
mwpppsubmitted	DATETIME	 NULL	COMMENT 'MW PPP Submitted',
mwpppapplied	DATETIME	 NULL	COMMENT 'MW PPP Applied',
mwpppreceived	DATETIME	 NULL	COMMENT 'MW PPP Received',
rslapplied	DATETIME	 NULL	COMMENT 'RSL Applied',
rslreceived	DATETIME	 NULL	COMMENT 'RSL Received',
txvendor	VARCHAR(100)	 NULL	COMMENT 'TX Vendor',
txsolution	VARCHAR(100)	 NULL	COMMENT 'TX Type',
fiberconstructiion	VARCHAR(100)	 NULL	COMMENT 'Fiber Source',
aendtype	VARCHAR(100)	 NULL	COMMENT 'A End Type',
bside	VARCHAR(100)	 NULL	COMMENT 'B Side(Backbone/Machine Type/Base Station Name)',
bendtype	VARCHAR(100)	 NULL	COMMENT 'B End Type',
accesstype	VARCHAR(100)	 NULL	COMMENT 'Access Type',
opticalcablesegment	VARCHAR(100)	 NULL	COMMENT 'Optical Cable Segment',
opticalcablecluster	VARCHAR(100)	 NULL	COMMENT 'Optical Cable Cluster',
opticalcabletype	VARCHAR(100)	 NULL	COMMENT 'Optical Cable Type',
opticalcablecores	VARCHAR(100)	 NULL	COMMENT 'Number of Optical Cable Cores',
opticalcableplan	VARCHAR(100)	 NULL	COMMENT 'Optical Cable Planning Length',
designroutelength	VARCHAR(100)	 NULL	COMMENT 'Design Route Length(km) ',
rowapplied	DATETIME	 NULL	COMMENT 'ROW Applied',
rowapproved	DATETIME	 NULL	COMMENT 'ROW Approved',
jpartaapplied	DATETIME	 NULL	COMMENT 'JPA/RTA Applied',
jpartaacquired	DATETIME	 NULL	COMMENT 'JPA/RTA Acquired',
poleconcompleted	DATETIME	 NULL	COMMENT 'Pole Construction Completed',
foclayingcompleted	DATETIME	 NULL	COMMENT 'FOC Laying Completed',
ipraninstalled	DATETIME	 NULL	COMMENT 'IPRAN Installed',
mwinstalled	DATETIME	 NULL	COMMENT 'MW Installed',
txinstalledplan	DATETIME	 NULL	COMMENT 'TX Installed Plan',
txinstalled	DATETIME	 NULL	COMMENT 'TX Installed',
backhaulingavailable	DATETIME	 NULL	COMMENT 'Backhauling Available',
mtfvalidated	DATETIME	 NULL	COMMENT 'MTF Validated',
materialspartialdelivered	DATETIME	 NULL	COMMENT 'Materials Partial Delivered',
materialsfulldelivered	DATETIME	 NULL	COMMENT 'Materials Full Delivered',
mosplan	DATETIME	 NULL	COMMENT 'MOS Plan',
mos	DATETIME	 NULL	COMMENT 'MOS',
oduinstalledplan	DATETIME	 NULL	COMMENT 'ODU Installed Plan',
oduinstalled	DATETIME	 NULL	COMMENT 'ODU Installed',
btsinstalledplan	DATETIME	 NULL	COMMENT 'BTS Installed Plan',
btsinstallation	DATETIME	 NULL	COMMENT 'BTS Installed',
iciplan	DATETIME	 NULL	COMMENT 'Integrated Plan',
integrated	DATETIME	 NULL	COMMENT 'Integrated',
rfsplan	DATETIME	 NULL	COMMENT 'RFS Plan',
rfs	DATETIME	 NULL	COMMENT 'RFS',
drivetestcompleted	DATETIME	 NULL	COMMENT 'Drive Test Completed',
ssvplan	DATETIME	 NULL	COMMENT 'SSV Plan',
ssvapproved	DATETIME	 NULL	COMMENT 'SSV Approved',
cacplan	DATETIME	 NULL	COMMENT 'CAC Plan',
clusteracceptance	DATETIME	 NULL	COMMENT 'CAC',
prepat	DATETIME	 NULL	COMMENT 'Pre-PAT',
patplan	DATETIME	 NULL	COMMENT 'PAT Plan',
patapproved	DATETIME	 NULL	COMMENT 'PAT Approved',
pacplan	DATETIME	 NULL	COMMENT 'PAC Plan',
provisionalacceptance	DATETIME	 NULL	COMMENT 'PAC',
facplan	DATETIME	 NULL	COMMENT 'FAC Plan',
finalacceptance	DATETIME	 NULL	COMMENT 'FAC',
extendt01	VARCHAR(100)	 NULL	COMMENT 'extendt01',
extendt02	VARCHAR(100)	 NULL	COMMENT 'extendt02',
extendt03	VARCHAR(100)	 NULL	COMMENT 'extendt03',
extendt04	VARCHAR(100)	 NULL	COMMENT 'extendt04',
extendt05	VARCHAR(100)	 NULL	COMMENT 'extendt05',
extendt06	VARCHAR(100)	 NULL	COMMENT 'extendt06',
extendt07	VARCHAR(100)	 NULL	COMMENT 'extendt07',
extendt08	VARCHAR(100)	 NULL	COMMENT 'extendt08',
extendt09	VARCHAR(100)	 NULL	COMMENT 'extendt09',
extendt10	VARCHAR(100)	 NULL	COMMENT 'extendt10',
extendi01	DECIMAL(10,0)	 NULL	COMMENT 'extendi01',
extendi02	DECIMAL(10,0)	 NULL	COMMENT 'extendi02',
extendi03	DECIMAL(10,0)	 NULL	COMMENT 'extendi03',
extendi04	DECIMAL(10,0)	 NULL	COMMENT 'extendi04',
extendi05	DECIMAL(10,0)	 NULL	COMMENT 'extendi05',
extendd01	DATETIME	 NULL	COMMENT 'extendd01',
extendd02	DATETIME	 NULL	COMMENT 'extendd02',
extendd03	DATETIME	 NULL	COMMENT 'extendd03',
extendd04	DATETIME	 NULL	COMMENT 'extendd04',
extendd05	DATETIME	 NULL	COMMENT 'extendd05',
extendd06	DATETIME	 NULL	COMMENT 'extendd06',
extendd07	DATETIME	 NULL	COMMENT 'extendd07',
extendd08	DATETIME	 NULL	COMMENT 'extendd08',
extendd09	DATETIME	 NULL	COMMENT 'extendd09',
extendd10	DATETIME	 NULL	COMMENT 'extendd10',
extendd11	DATETIME	 NULL	COMMENT 'extendd11',
extendd12	DATETIME	 NULL	COMMENT 'extendd12',
extendd13	DATETIME	 NULL	COMMENT 'extendd13',
extendd14	DATETIME	 NULL	COMMENT 'extendd14',
extendd15	DATETIME	 NULL	COMMENT 'extendd15',
extendd16	DATETIME	 NULL	COMMENT 'extendd16',
extendd17	DATETIME	 NULL	COMMENT 'extendd17',
extendd18	DATETIME	 NULL	COMMENT 'extendd18',
extendd19	DATETIME	 NULL	COMMENT 'extendd19',
extendd20	DATETIME	 NULL	COMMENT 'extendd20',
extendn01	DECIMAL(8,6)	 NULL	COMMENT 'extendn01',
extendn02	DECIMAL(8,6)	 NULL	COMMENT 'extendn02',
extendn03	DECIMAL(8,6)	 NULL	COMMENT 'extendn03',
extendn04	DECIMAL(8,6)	 NULL	COMMENT 'extendn04',
extendn05	DECIMAL(8,6)	 NULL	COMMENT 'extendn05',
	status				CHAR(1)			NOT NULL	DEFAULT '0'COMMENT 'Status(0-normal 1-delete 2suspend 3error)',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (id)
) COMMENT = 'Site';