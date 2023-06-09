CREATE INDEX idx_injury_player_id ON INJURY (PLAYER_ID);
CREATE INDEX idx_injury_game_id ON INJURY (GAME_ID);
CREATE INDEX idx_player_id ON liocohen.player (ID);
CREATE INDEX idx_player_gender ON liocohen.player (gender);
CREATE INDEX idx_player_nationality ON liocohen.player (nationality);
CREATE INDEX idx_player_wins ON liocohen.player (wins);
CREATE INDEX idx_player_losses ON liocohen.player (losses);
CREATE INDEX idx_position_playing_style ON POSITION (playing_style);
CREATE INDEX idx_position_strengths ON POSITION (STRENGTHS);
