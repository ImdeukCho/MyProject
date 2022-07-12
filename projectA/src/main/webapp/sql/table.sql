create table login
( userId varchar2(20) primary key,
  userPasswd varchar2(20) not null,
  userName varchar2(20) not null,
  gender varchar2(20) not null,
  birth date not null,
  phone varchar2(60),
  address varchar2(200) not null,
  email varchar2(60),
  profilePhoto varchar2(200),
  certificatePhoto varchar2(200),
  certificateData varchar2(200),
  hobby varchar2(200),
  cardName varchar2(20),
  cardNo  varchar2(30));
  

insert into login values ( 'id1' , '1234' , 'name1', '남자', '2000/01/01', '01012345678', '서울', 'avcd@naver.com', '프로필img1.jpg', '자격증img1.jpg','자격증정보1','뷰티·심리·퍼스널검사',null,null);
insert into login values ( 'id2' , '5678' , 'name2', '여자', '1990/02/04', '01084246872', '대전', 'sdwq@daum.net', '프로필img2.jpg', '자격증img2.jpg','자격증정보2','외국어',null,null);
insert into login values ( 'id3' , '9101' , 'name3', '남자', '1935/09/07', '01023156782', '창원', 'dasd@nate.com', '프로필img3.jpg', '자격증img3.jpg','자격증정보3','댄스·뮤직',null,null);
insert into login values ( 'id4' , '2134' , 'name4', '여자', '1952/11/30', '01155648725', '부산', 'qeweq@google.co.kr', '프로필img4.jpg', '자격증img4.jpg','자격증정보4','요리·공예·취미',null,null);
insert into login values ( 'id5' , '4567' , 'name5', '남자', '2010/02/15', '01056687541', '수원', 'dffe@naver.com', '프로필img5.jpg', '자격증img5.jpg','자격증정보1','드로잉·디자인·영상',null,null);
insert into login values ( 'id6' , '6845' , 'name6', '여자', '2001/06/18', '01012345678', '안동', 'qwex@daum.net', '프로필img6.jpg', '자격증img6.jpg','자격증정보2','스포츠·피트니스',null,null);
insert into login values ( 'id7' , '1234' , 'name7', '남자', '2002/05/21', '01012345678', '순천', 'agsgsd@nate.com', '프로필img7.jpg', '자격증img7.jpg','자격증정보3','드로잉·디자인·영상',null,null);
insert into login values ( 'id8' , '2345' , 'name8', '남자', '2003/09/28', '01012345678', '경주', 'awef@google.co.kr', '프로필img8.jpg', '자격증img8.jpg','자격증정보4','외국어',null,null);
insert into login values ( 'id9' , '3245' , 'name9', '여자', '2004/12/25', '', '서울', '', '', '','','','','');
insert into login values ( 'id10' , '2234' , 'name10', '여자', '2000/01/01', '', '서울', '', '', '','','','','');

commit;

ALTER TABLE LOGIN MODIFY birth VAR date;
DROP TABLE login;
select * from login order by userId asc;