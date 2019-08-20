INSERT INTO `bank`.`customer`
(`c_id`,`cname`,`mno`,`address`,`city`,`DOB`)
VALUES
('C1','Ankur',838289,'Domlur','Bangalore','1999-09-11');
INSERT INTO `bank`.`customer`
(`c_id`,`cname`,`mno`,`address`,`city`,`DOB`)
VALUES
('C2','John',89849,'Vaishali','Jaipur','1992-10-10');
INSERT INTO `bank`.`customer`
(`c_id`,`cname`,`mno`,`address`,`city`,`DOB`)
VALUES
('C3','Raman',838289,'Marathali','bangalore','1987-08-15');


UPDATE `bank`.`customer`
SET
`city`='Bangalore' where c_id='C2';

delete from `bank`.customer 
where c_id='C3';

CREATE TABLE `bank`.`account` (
  `acct_no` VARCHAR(10) NOT NULL,
  `c_id_acc` VARCHAR(10) NULL,
  `type` VARCHAR(10) NULL,
  `balance` INT NULL,
  PRIMARY KEY (`acct_no`),
  INDEX `c_id_foreign_idx` (`c_id_acc` ASC) VISIBLE,
  CONSTRAINT `c_id_foreign`
    FOREIGN KEY (`c_id_acc`)
    REFERENCES `bank`.`customer` (`c_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



INSERT INTO `bank`.`account`
(`acct_no`,`c_id_acc`,`type`,`balance`)
VALUES
('CA1','C1','Savings',50000);

INSERT INTO `bank`.`account`
(`acct_no`,`c_id_acc`,`type`,`balance`)
VALUES
('CA2','C1','Savings',10000);



