drop database student ;
create database student ;
use student ;
set names gbk;
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cid` varchar(3) NOT NULL COMMENT '�γ̱��',
  `cname` varchar(20) NOT NULL COMMENT '�γ�����',
  `tid` varchar(3) DEFAULT NULL COMMENT '�ڿν�ʦ���',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `course` VALUES ('001', '��ҵ����', '002');
INSERT INTO `course` VALUES ('002', '���˼', '008');
INSERT INTO `course` VALUES ('003', 'UML', '006');
INSERT INTO `course` VALUES ('004', '���ݿ�', '007');
INSERT INTO `course` VALUES ('005', '�߼���·', '006');
INSERT INTO `course` VALUES ('006', 'Ӣ��', '003');
INSERT INTO `course` VALUES ('007', '���ӵ�·', '005');
INSERT INTO `course` VALUES ('008', 'ë��˼�����', '004');
INSERT INTO `course` VALUES ('009', '������ѧʷ', '012');
INSERT INTO `course` VALUES ('010', '���Դ���', '017');
INSERT INTO `course` VALUES ('011', '���������', '013');
INSERT INTO `course` VALUES ('012', 'AUTO CAD��ͼ', '015');
INSERT INTO `course` VALUES ('013', 'ƽ�����', '011');
INSERT INTO `course` VALUES ('014', 'Flash����', '001');
INSERT INTO `course` VALUES ('015', 'Java����', '009');
INSERT INTO `course` VALUES ('016', 'C#����', '002');
INSERT INTO `course` VALUES ('017', 'Oracl���ݿ�ԭ��', '010');

DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `sid` varchar(5) DEFAULT NULL COMMENT 'ѧ��',
  `cid` varchar(3) DEFAULT NULL COMMENT '�γ̱��',
  `score` float DEFAULT NULL COMMENT '�ɼ�'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `sc` VALUES ('1000', '014', '75');
INSERT INTO `sc` VALUES ('1000', '004', '16');
INSERT INTO `sc` VALUES ('1001', '003', '90');
INSERT INTO `sc` VALUES ('1001', '002', '87');
INSERT INTO `sc` VALUES ('1001', '001', '96');
INSERT INTO `sc` VALUES ('1001', '010', '85');
INSERT INTO `sc` VALUES ('1002', '003', '70');
INSERT INTO `sc` VALUES ('1002', '002', '87');
INSERT INTO `sc` VALUES ('1002', '001', '42');
INSERT INTO `sc` VALUES ('1002', '010', '65');
INSERT INTO `sc` VALUES ('1002', '016', '100');
INSERT INTO `sc` VALUES ('1002', '004', '55');
INSERT INTO `sc` VALUES ('1003', '006', '78');
INSERT INTO `sc` VALUES ('1003', '003', '70');
INSERT INTO `sc` VALUES ('1003', '005', '70');
INSERT INTO `sc` VALUES ('1003', '001', '32');
INSERT INTO `sc` VALUES ('1003', '010', '85');
INSERT INTO `sc` VALUES ('1003', '011', '21');
INSERT INTO `sc` VALUES ('1004', '007', '90');
INSERT INTO `sc` VALUES ('1004', '004', '42');
INSERT INTO `sc` VALUES ('1004', '002', '87');
INSERT INTO `sc` VALUES ('1004', '001', '83');
INSERT INTO `sc` VALUES ('1005', '001', '23');
INSERT INTO `sc` VALUES ('1006', '015', '85');
INSERT INTO `sc` VALUES ('1006', '006', '46');
INSERT INTO `sc` VALUES ('1006', '003', '59');
INSERT INTO `sc` VALUES ('1006', '004', '70');
INSERT INTO `sc` VALUES ('1006', '001', '99');
INSERT INTO `sc` VALUES ('1007', '011', '85');
INSERT INTO `sc` VALUES ('1007', '006', '84');
INSERT INTO `sc` VALUES ('1007', '003', '72');
INSERT INTO `sc` VALUES ('1007', '002', '87');
INSERT INTO `sc` VALUES ('1008', '001', '94');
INSERT INTO `sc` VALUES ('1008', '012', '85');
INSERT INTO `sc` VALUES ('1008', '006', '32');
INSERT INTO `sc` VALUES ('1008', '013', '97');
INSERT INTO `sc` VALUES ('1008', '004', '34');
INSERT INTO `sc` VALUES ('1009', '003', '90');
INSERT INTO `sc` VALUES ('1009', '002', '82');
INSERT INTO `sc` VALUES ('1009', '001', '96');
INSERT INTO `sc` VALUES ('1009', '010', '82');
INSERT INTO `sc` VALUES ('1009', '008', '92');
INSERT INTO `sc` VALUES ('1010', '003', '90');
INSERT INTO `sc` VALUES ('1010', '002', '87');
INSERT INTO `sc` VALUES ('1010', '001', '96');
INSERT INTO `sc` VALUES ('1011', '009', '24');
INSERT INTO `sc` VALUES ('1011', '009', '25');
INSERT INTO `sc` VALUES ('1012', '003', '30');
INSERT INTO `sc` VALUES ('1013', '002', '37');
INSERT INTO `sc` VALUES ('1013', '001', '16');
INSERT INTO `sc` VALUES ('1013', '007', '55');
INSERT INTO `sc` VALUES ('1013', '006', '42');
INSERT INTO `sc` VALUES ('1013', '012', '34');
INSERT INTO `sc` VALUES ('1013', '016', '86');
INSERT INTO `sc` VALUES ('1013', '016', '44');









DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` varchar(5) NOT NULL COMMENT 'ѧ��',
  `sname` varchar(10) NOT NULL COMMENT 'ѧ������',
  `stuage` int(11) DEFAULT NULL COMMENT 'ѧ������',
  `ssex` char(1) NOT NULL COMMENT 'ѧ���Ա�',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `student` VALUES ('1000', '���޼�', '18', '��');
INSERT INTO `student` VALUES ('1001', '������', '19', 'Ů');
INSERT INTO `student` VALUES ('1002', '���', '19', '��');
INSERT INTO `student` VALUES ('1003', '����', '18', 'Ů');
INSERT INTO `student` VALUES ('1004', 'С��Ů', '17', 'Ů');
INSERT INTO `student` VALUES ('1005', '������', '18', '��');
INSERT INTO `student` VALUES ('1006', '�����', '19', '��');
INSERT INTO `student` VALUES ('1007', '��ӯӯ', '20', 'Ů');
INSERT INTO `student` VALUES ('1008', '����ɺ', '19', 'Ů');
INSERT INTO `student` VALUES ('1009', 'ΤС��', '18', '��');
INSERT INTO `student` VALUES ('1010', '����', '17', 'Ů');
INSERT INTO `student` VALUES ('1011', '����', '19', '��');
INSERT INTO `student` VALUES ('1012', '����', '18', 'Ů');
INSERT INTO `student` VALUES ('1013', '����', '19', '��');
INSERT INTO `student` VALUES ('1014', '�ܲ�ͨ', '19', '��');
INSERT INTO `student` VALUES ('1015', '����', '20', 'Ů');
INSERT INTO `student` VALUES ('1016', '����ˮ', '21', 'Ů');
INSERT INTO `student` VALUES ('1017', '��ҩʦ', '18', '��');
INSERT INTO `student` VALUES ('1018', '��Ī��', '18', 'Ů');
INSERT INTO `student` VALUES ('1019', '��Ĭ��', '17', '��');
INSERT INTO `student` VALUES ('1020', '������', '17', '��');
INSERT INTO `student` VALUES ('1021', '����', '18', 'Ů');

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tid` varchar(3) NOT NULL COMMENT '��ʦ���',
  `tname` varchar(10) NOT NULL COMMENT '��ʦ����',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `teacher` VALUES ('001', 'Ҧ��');
INSERT INTO `teacher` VALUES ('002', 'Ҷƽ');
INSERT INTO `teacher` VALUES ('003', 'Ҷ��');
INSERT INTO `teacher` VALUES ('004', '���ǻ�');
INSERT INTO `teacher` VALUES ('005', '�������');
INSERT INTO `teacher` VALUES ('006', '��ǧ��');
INSERT INTO `teacher` VALUES ('007', '��ǧ��');
INSERT INTO `teacher` VALUES ('008', '��־��');
INSERT INTO `teacher` VALUES ('009', '����');
INSERT INTO `teacher` VALUES ('010', '��ܽ��');
INSERT INTO `teacher` VALUES ('011', '١����');
INSERT INTO `teacher` VALUES ('012', '��չ��');
INSERT INTO `teacher` VALUES ('013', '�����');
INSERT INTO `teacher` VALUES ('014', '�����');
INSERT INTO `teacher` VALUES ('015', '����ȱ');
INSERT INTO `teacher` VALUES ('016', '�𲻻�');
INSERT INTO `teacher` VALUES ('017', '�ǵ�');

#select sname from student where sid=(select sid from sc where cid=
#(select cid from course where tid=
#(select tid from teacher where tname like 'Ҧ��')));
#select sid,count(1) from sc where score < 60 group by sid having count(1) >= 2;
#count(n)n��������
#select sc.sid,avg(sc.score),sc.cid,c.cname from sc,course c,teacher t where sc.cid=c.cid and c.tid=t.tid and tname like '��%'

#select * from student where sid not in(select stu.sid from student stu,course c,sc s,teacher t where stu.sid=s.sid and s.cid=c.cid and c.tid=t.tid and tname like '��%');

#update sc set score=a.sco on
#(select sc.sid,sc.score from sc,course c,teacher t where sc.cid=c.cid and c.tid=t.tid and tname like '��%') a 
#where sc.id in(t);



