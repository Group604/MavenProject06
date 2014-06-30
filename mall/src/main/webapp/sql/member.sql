/* member.sql */

--drop table member},#{
--
--create table member(
--join_id   		varchar2(20) primary key,
--join_pwd 		varchar2(100) not null,
--join_name 		varchar2(20) not null,
--join_zip 		varchar2(5) not null,
--join_zip2 		varchar2(5) not null,
--join_addr 		varchar2(100) not null,
--join_addr2   varchar2(80) not null,
--join_phone01 varchar2(5),
--join_phone02 varchar2(10),
--join_phone03 varchar2(10),
--mail_id 		varchar2(30),
--mail_domain 	varchar2(50),
--join_date 		date,/*가입날자 */
--join_state 		number(10),/*가입회원 1, 탈퇴회원 2 */
--join_delcont 		varchar2(4000),/* 탈퇴 사유 */
--join_deldate 		date /*탈퇴 날짜 */
--)},#{

--drop table member;

/* member테이블 수정본(2014.06.29)-다시 만듦 */
create table member(
member_id         	varchar2(20) primary key,
member_pwd        	varchar2(100) not null,
member_name      	varchar2(100) not null,
member_zip          varchar2(5) not null,
member_zip2       	varchar2(5) not null,
member_addr       	varchar2(100) not null,
member_addr2        varchar2(300) not null,
member_phone01      varchar2(5),
member_phone02      varchar2(5),
member_phone03      varchar2(5),
member_emailid    	varchar2(30),
member_emaildomain	varchar2(50),
                   	
member_date       	date default sysdate,/*가입날자 */               
member_state        number(1) default 1,/*가입회원 1, 탈퇴회원 2 */
member_delcont      varchar2(4000),/* 탈퇴 사유 */   
member_deldate      date, /*탈퇴 날짜 */             
member_admin         number(1) default 2,/*관리자 여부:관리자 1, 일반 2*/          
member_jumin1       varchar2(6),/* 주민번호 앞자리 */    
member_jumin2       varchar2(7) /*주민번호 뒷자리*/      
);
update member set join_state=1
 where join_id='unix';
 
 
 select * from zipcode where dong like '%계산3%';
 
 create table phone(
 no int primary key,
 phone_number varchar2(3),
 phone_compamy varchar2(100)
 );
 
 
 create sequence phone_no_seq
 increment by 1 start with 1 nocache;
 
 create table email(
 no int primary key,
 email_domain varchar2(100),
 email_site varchar2(200)
 );
 
 create sequence email_no_seq
 increment by 1 start with 1 nocache;
 
 insert into phone values(phone_no_seq.nextval,'010','SK-TELECOM');
 insert into phone values(phone_no_seq.nextval,'010','KT');
 insert into phone values(phone_no_seq.nextval,'010','LG');
 insert into phone values(phone_no_seq.nextval,'011','SK-TELECOM');
 insert into phone values(phone_no_seq.nextval,'016','KT');
 insert into phone values(phone_no_seq.nextval,'018','LG');
 insert into phone values(phone_no_seq.nextval,'019','LG');
 insert into phone values(phone_no_seq.nextval,'010','ETC');
 
 
 insert into email values(email_no_seq.nextval,'naver.com','네이버');
 insert into email values(email_no_seq.nextval,'daum.net','다음');
 insert into email values(email_no_seq.nextval,'korea.com','코리아');
 insert into email values(email_no_seq.nextval,'nate.com','네이트');
 insert into email values(email_no_seq.nextval,'google.com','구글');
 insert into email values(email_no_seq.nextval,'hanmail.net','한메일');
 insert into email values(email_no_seq.nextval,'직접입력','직접입력');
 
 
 
 select distinct phone_number from phone order by phone_number asc
 select email_domain from email order by no asc
 
 
 
 select * from member;

 delete member;