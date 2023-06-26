CREATE OR REPLACE PROCEDURE UpdatePositionDetails(
    p_PlayerID IN NUMBER,
    p_Strengths IN VARCHAR2,
    p_Weaknesses IN VARCHAR2,
    p_PlayingStyle IN VARCHAR2
)
IS
BEGIN
    UPDATE position
    SET strengths = p_Strengths,
        weaknesses = p_Weaknesses,
        playing_style = p_PlayingStyle
    WHERE player_id = p_PlayerID;

    DBMS_OUTPUT.PUT_LINE('Position details updated successfully for Player ID: ' || p_PlayerID);

    COMMIT;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Position details not found for Player ID: ' || p_PlayerID);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred while updating the position details.');
        ROLLBACK; 
END;
