-- Create table
CREATE TABLE T_BUDG_APPLY
(
  bid          INT,
  bname        VARCHAR(10),
  bdate        VARCHAR(10),
  fid          INT,
  UUID         INT,
  bperiod      VARCHAR(10),
  bsum         INT,
  bunitid      VARCHAR(10),
  bunitname    VARCHAR(10),
  bdname       VARCHAR(10),
  bremark      VARCHAR(10),
  bdetlid      INT,
  bdetlname    VARCHAR(10),
  bfeeshow     VARCHAR(10),
  bfeeamount   INT,
  fname        VARCHAR(10),
  sid          INT,
  flowsequence INT,
  uname        VARCHAR(10),
  appnum       INT,
  isagree      INT,
  isagreename  VARCHAR(10),
  appraddvice  VARCHAR(300),
  adate        VARCHAR(10)
);/
-- Create table
CREATE TABLE T_BUGET_UNIT
(
  bunitid INT,
  bname   VARCHAR(10),
  bid     INT,
  bdate   DATE,
  bperiod INT,
  bsum    INT,
  bremark VARCHAR(30)
);
-- Create table
CREATE TABLE T_FLOW
(
  fid   INT,
  fname VARCHAR(10)
);
-- Create table
CREATE TABLE T_FLOWSEQ
(
  fid INT,
  sid INT
)
;
-- Create table
CREATE TABLE T_PERMISSION
(
  id    INT,
  NAME  VARCHAR(10),
  pno   INT,
  pname VARCHAR(10)
);
-- Create table
CREATE TABLE T_ROLE
(
  id   INT,
  NAME VARCHAR(10),
  rno  INT,
  pno  INT
);
-- Create table
CREATE TABLE T_USER
(
  userid   INT,
  username VARCHAR(10),
  PASSWORD VARCHAR(10),
  pname    VARCHAR(10),
  rno      INT,
  NAME     VARCHAR(10),
  id       INT,
  sid      INT
);