drop table tbl_SLG_HCAHPS
go
create table tbl_SLG_HCAHPS
(
 ID int  IDENTITY (1,1),
SurveyTemplateID varchar(20),
ClientID  varchar(10),
ClientSurveyName varchar(50),
ClientSurveyID varchar(20),
SurveyTakerID varchar(20),
SurveyNumber varchar(15),
ClientSurveyTargetID varchar(20),
DateOfService varchar(15),
FirstName varchar(50),
MiddleName varchar(10),
LastName varchar(50),
Address1 varchar(250),
Address2 varchar(250),
City varchar(20),
State varchar(5),
Zip	varchar(15),
Phone varchar(20),
LoginCode varchar(50),
Language varchar(50),
LogoFileName varchar(50),
SignatureFileName varchar(50),
RegionImageFileName varchar(50),
ClinicImageFileName varchar(50),
DepartmentImageFileName varchar(50),
ProviderImageFileName varchar(50),
ClinicName varchar(250),
ClinicCode varchar(10),
ClinicPhoneNumber varchar(20),
SignatureName varchar(50),
SignatureTitle varchar(50),
Wave varchar(5),
DGExportID varchar(10)
);


------------------------------


insert into tbl_SLG_HCAHPS
select 'SurveyTemplateID','ClientID','ClientSurveyName','ClientSurveyID','SurveyTakerID','SurveyNumber','ClientSurveyTargetID','DateOfService','FirstName','MiddleName','LastName','Address1',
'Address2','City','State','Zip','Phone','LoginCode','Language','LogoFileName','SignatureFileName','RegionImageFileName','ClinicImageFileName','DepartmentImageFileName','ProviderImageFileName',
'ClinicName','ClinicCode','ClinicPhoneNumber','SignatureName','SignatureTitle','Wave','DGExportID'


select convert(varchar(20) , SurveyTemplateID),
convert(varchar(10) , ClientID),
convert(varchar(50) , ClientSurveyName),
convert(varchar(20) , ClientSurveyID),
convert(varchar(50) , Cast(SurveyTakerID as decimal(50, 0))), 
convert(varchar(15) , SurveyNumber),
convert(varchar(20) , ClientSurveyTargetID),
convert(varchar(15) , DateOfService),
convert(varchar(50) , FirstName),
convert(varchar(10) , MiddleName),
convert(varchar(50) , LastName),
convert(varchar(250) , Address1),
convert(varchar(250) , Address2),
convert(varchar(20) , City),
convert(varchar(5) , State),
convert(varchar(15) , Zip),
convert(varchar(20) , Phone),
convert(varchar(50) , LoginCode),
convert(varchar(50) , Language),
convert(varchar(50) , LogoFileName),
convert(varchar(50) , SignatureFileName),
convert(varchar(50) , RegionImageFileName),
convert(varchar(50) , ClinicImageFileName),
convert(varchar(50) , DepartmentImageFileName),
convert(varchar(50) , ProviderImageFileName),
convert(varchar(250) , ClinicName),
convert(varchar(10) , ClinicCode),
convert(varchar(20) , ClinicPhoneNumber),
convert(varchar(50) , SignatureName),
convert(varchar(50) , SignatureTitle),
convert(varchar(5) , Wave),
convert(varchar(10) , DGExportID)
from temp_tbl
