CREATE TABLE POSITION
(
  Strengths VARCHAR NOT NULL,
  Weaknesses VARCHAR NOT NULL,
  Playing_Style VARCHAR NOT NULL,
  P_Name VARCHAR NOT NULL,
  P_Id INT NOT NULL,
  Team_Name VARCHAR NOT NULL,
  Player_Id INT NOT NULL
);

CREATE TABLE INJURY
(
  I_Id INT NOT NULL,
  I_Type VARCHAR NOT NULL,
  Severity VARCHAR NOT NULL,
  Duration VARCHAR NOT NULL,
  Treatment VARCHAR NOT NULL,
  I_History VARCHAR NOT NULL,
  Player_Id INT NOT NULL,
  Game_Id INT NOT NULL,
  PRIMARY KEY (I_Id)
);

CREATE TABLE DRAFT
(
  Team_Selected VARCHAR NOT NULL,
  D_Evaluation VARCHAR NOT NULL,
  D_Position VARCHAR NOT NULL,
  D_Year INT NOT NULL,
  D_Id INT NOT NULL
);