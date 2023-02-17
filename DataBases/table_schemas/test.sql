
CREATE TABLE 
(
  sub_uid  NOT NULL
);

CREATE TABLE main
(
  main_uid  NOT NULL,
            NULL    ,
  PRIMARY KEY (main_uid)
);

CREATE TABLE sub
(
  sub_uid  NOT NULL,
           NULL    ,
  PRIMARY KEY (sub_uid)
);

ALTER TABLE sub
  ADD CONSTRAINT FK_main_TO_sub
    FOREIGN KEY (sub_uid)
    REFERENCES main (main_uid);

ALTER TABLE 
  ADD CONSTRAINT FK_sub_TO_
    FOREIGN KEY (sub_uid)
    REFERENCES sub (sub_uid);
