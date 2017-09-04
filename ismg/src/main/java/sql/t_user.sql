drop TABLE  t_user;
CREATE TABLE  t_user (
  id BIGINT AUTO_INCREMENT PRIMARY KEY ,
  real_name VARCHAR(50) ,
  login_name VARCHAR(50),
  password VARCHAR(50),
  phone VARCHAR(50),
  id_card VARCHAR(50),
  leavel BIGINT ,
  family_adress VARCHAR(50),
  work_adress VARCHAR(50),
  work_type VARCHAR(10),
  create_time Timestamp,
  update_time TIMESTAMP
) DEFAULT CHARSET = 'utf8';


