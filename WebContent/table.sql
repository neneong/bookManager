create table bookshop(
	isbn varchar2(15) primary key not null,
	title varchar2(50) not null,
	author varchar2(50) not null,
	company varchar2(50),
	price number

);


insert into bookshop values('88-99-11', '오라클 3일완성', '이오라', '야메루출판사', 15000);
insert into bookshop values('90-10-12', 'JSP 달인되기', '송JP', '공갈닷컴', 20000);
insert into bookshop values('87-90-33', '자바무따기', '김자바', '디지탈박스', 35000);

select * from bookshop;


/*도서관 사용자 테이블 : lib_member*/

drop table lib_member;
create table lib_member(
	member_id varchar2(20) constraint member_id pk primary key,
	member_pwd varchar2(20),
	member_name varchar2(20),
	member_addr varchar2(50),
	member_age number(3)

);


insert into lib_member(member_id, member_pwd, member_name, member_addr, member_age) values('test',' 1234', 'yangyong', '경기도 성남시 서현동', 18);
insert into lib_member(member_id, member_pwd, member_name, member_addr, member_age) values('test2', '5678', '양영2', '경기도 성남시 서현동', 17);
insert into lib_member(member_id, member_pwd, member_name, member_addr, member_age) values('candy', 'candy1234', '캔디', '경기도 성남시 불정로 386번길', 20);
insert into lib_member(member_id, member_pwd, member_name, member_addr, member_age) values('admin', 'admin1234', '관리자', '양영 도서관', 50);
select * from lib_member order by member_id asc;

/* 도서 테이블 : lib_book, 도서번호는 book_seq로 자동 생성하기*/
drop table lib_book;
create table lib_book(
	book_no number(6) constraint book_no_pk primary key,
	title varchar2(40),
	author varchar2(20),
	company varchar2(50),
	price number(6),
	rentaled char(1)
);


drop sequence book_seq;

create sequence book_seq;

insert into lib_book(book_no, title, author, company, price, rentaled) values (book_seq.nextval, '모모', '미하엘 엔데', '비룡소', 11000, 'f');
insert into lib_book(book_no, title, author, company, price, rentaled) values (book_seq.nextval,'장미의 이름', '움베르토 에코', '열린책들', 25000, 'f');
insert into lib_book(book_no, title, author, company, price, rentaled) values (book_seq.nextval, '수레바퀴 밑에서', '헤르만 헤세', '어문각', 10000, 'f');
insert into lib_book(book_no, title, author, company, price, rentaled) values (book_seq.nextval,'모리와 함께한 화요일', '미치 엘봄', '살림', 10800, 'f');
insert into lib_book(book_no, title, author, company, price, rentaled) values (book_seq.nextval, '연금술사', '파울로 코엘료', '문학동네', 9500, 'f');
insert into lib_book(book_no, title, author, company, price, rentaled) values (book_seq.nextval, '앵무세 죽이기', '하퍼 리', '열린책들', 13000, 'f');
insert into lib_book(book_no, title, author, company, price, rentaled) values (book_seq.nextval, '작은 아씨들', '루이자 메이', '윌북', 15800, 'f');
insert into lib_book(book_no, title, author, company, price, rentaled) values (book_seq.nextval, '라틴어 수업', '한동일', '흐름출판', 15800, 'f');
insert into lib_book(book_no, title, author, company, price, rentaled) values (book_seq.nextval, '좁은 문', '앙드레 지드', '열린책들', '10800', 'f');
insert into lib_book(book_no, title, author, company, price, rentaled) values (book_seq.nextval, '페르마의 마지막 정리', '사이먼 싱', '경문사', 10000, 'f');

select * from lib_book order by book_no asc;
select * from lib_book where title like '%장미%'; /* title 내용 중 장미가 포함된 레코드를 검색 */

/*도서대여 테이블 : rent_book, 대여번호는 rent_seq로 자동 생성함. */

drop table rent_book;
drop sequence rent_seq;
create sequenct rent_seq;
create table rent_book(
	rent_no number(6) primary key,
	member_id varchar2(20),
	book_no number(6),
	member_name varchar2(20),
	title varchar2(40)

);

/* 사용자가 도서(모모 : book_no = 1)를 대여하는 경우,
 * rent_book 테이블에는 대여정보 추가하고, lib_book 테이블에는 1번 도서의 rentaled 필드 정보를
수정해야 함. */

insert into rent_book(rent_no, member_id, book_no, member_name, title) values (rent_seq.nextval, 'candy', '1', '캔디', '모모');
select * from rent_book order by rent_no asc;