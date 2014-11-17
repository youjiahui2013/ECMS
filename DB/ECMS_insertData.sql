INSERT INTO t_permission(id,NAME,pno,pname) VALUES(1,'admin',1,'admin');

INSERT INTO t_role(id,NAME,rno,pno) VALUES(1,'admin',1,1);

INSERT INTO t_user(userid,username,PASSWORD,pname,rno,NAME,id,sid) VALUES(1,'admin','admin','admin',1,'admin',1,1);

