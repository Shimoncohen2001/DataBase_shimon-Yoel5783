CREATE TABLE POSITION
(
  Strengths INT NOT NULL,
  Weaknesses INT NOT NULL,
  Playing_Style INT NOT NULL,
  P_Name INT NOT NULL,
  P_Id INT NOT NULL,
  Team_Name INT NOT NULL,
  Player_Id INT NOT NULL,
  PRIMARY KEY (P_Id)
);

CREATE TABLE INJURY
(
  I_Id INT NOT NULL,
  I_Type INT NOT NULL,
  Severity INT NOT NULL,
  Duration INT NOT NULL,
  Treatment INT NOT NULL,
  I_History INT NOT NULL,
  Player_Id INT NOT NULL,
  Game_Id INT NOT NULL,
  PRIMARY KEY (I_Id)
);

CREATE TABLE DRAFT
(
  Team_Selected INT NOT NULL,
  D_Evaluation INT NOT NULL,
  D_Position INT NOT NULL,
  D_Year INT NOT NULL,
  D_Id INT NOT NULL,
  PRIMARY KEY (D_Id)
);