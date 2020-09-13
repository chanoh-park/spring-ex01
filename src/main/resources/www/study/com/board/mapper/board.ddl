-- 시퀀스
create sequence seq_board;

-- 테이블 생성
create table tbl_board (
    bno number(10, 0),
    title varchar2(200) not null,
    content varchar2(2000) not null,
    writer varchar2(50) not null,
    regdate date default sysdate,
    updatedate date default sysdate
);

-- primary key
alter table tbl_board add constraint pk_board primary key (bno);

-- 데이터 추가
insert into tbl_board (bno, title, content, writer) values (seq_board.nextval, '테스트 제목', '테스트 내용', 'user00');

-- 조회
select * from tbl_board;

select * from tbl_board where bno > 0;
