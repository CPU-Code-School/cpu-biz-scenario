use FitPlexDB
go 
drop table if exists Member
go 
create table dbo.Member(
     MemberID int not null primary key identity,
     MemberFirstName varchar(25) not null
          constraint c_Member_first_name_cannot_be_blank check(MemberFirstName <> ''),
     MemberLastName varchar(25) not null 
          constraint c_Member_last_name_cannot_be_blank check(MemberLastName <> ''),
     MemberPhoneNum char(8) not null
          constraint c_Member_phone_number_must_have_seven_digits check(MemberPhoneNum like '[1-9][0-9][0-9][-][0-9][0-9][0-9][0-9]'),
          constraint u_Member_phone_number unique(MemberPhoneNum),
     MemberInitialWeightLb tinyint not null
          constraint c_Member_initial_weight_cannot_be_blank check(MemberInitialWeightLb > 0),
     MemberGoalWeightLb tinyint not null 
          constraint c_Member_goal_weight_cannot_be_blank check(MemberGoalWeightLb > 0),
     MemberCurrentWeightLb tinyint not null
          constraint c_Member_current_weight_cannot_be_blank check(MemberCurrentWeightLb > 0),
     MemberBMI decimal(3,1) not null
          constraint c_Member_body_mass_index_cannot_be_blank check(MemberBMI > 0),
     MembershipStartDate date not null
          constraint c_Member_membership_start_date_must_be_between_12_01_2022_and_current_date check(MembershipStartDate between '2022-12-01' and getdate()),
     MembershipEndDate date not null,
     MembershipType varchar(11) not null 
          constraint c_Member_membership_type_must_be_annual_semiannual_monthly_or_quarterly check(MembershipType in ('annual', 'semi-annual', 'monthly', 'quarterly')),
     PaymentStatus varchar(10) not null 
          constraint c_Member_payment_status_cannot_be_blank check(PaymentStatus <> ''),
     EmergencyContactPhoneNum char(8) 
          constraint d_Member_emergency_contact_phone_number_default_value_is_blank default '',
     SessionDateAndTime datetime not null,
     MemberWeightLostLb as MemberInitialWeightLb - MemberCurrentWeightLb persisted,
     constraint c_Member_session_date_and_time_must_be_between_membership_start_date_and_membership_end_date check(SessionDateAndTime between MembershipStartDate and dateadd(day,1,MembershipEndDate)),
     constraint c_Member_goal_weight_must_be_less_than_initial_weight check(MemberGoalWeightLb < MemberInitialWeightLb),
     constraint c_Member_membership_end_date_must_be_after_or_on_membership_start_date check(MembershipEndDate >= MembershipStartDate)
)

