CREATE TABLE t_reim_apply(
rid INT,
rname VARCHAR(10),
rsdate VARCHAR(10),
redate VARCHAR(10),
rperiod VARCHAR(10),
rproject VARCHAR(10),
rpname VARCHAR(10),
rsum INT,
rinfo VARCHAR(100),
rremark VARCHAR(220),
rtype VARCHAR(10),
rpnum VARCHAR(10),
rdate VARCHAR(10)
);

CREATE TABLE t_reim_unit(
runitid INT,
runame VARCHAR(10)
);
CREATE TABLE t_reim_detail(
rdetlid INT,
rdname VARCHAR(10),
rfeeshow VARCHAR(10),
rfeeamount INT
);
CREATE TABLE t_reim_appr_his(
rano INT,
radate VARCHAR(10),
raidea VARCHAR(10),
raagree VARCHAR(100),
id INT,
rappsum INT
);