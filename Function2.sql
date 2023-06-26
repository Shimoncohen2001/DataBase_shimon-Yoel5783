CREATE OR REPLACE FUNCTION CalculateTotalInjuryDuration(
    p_PlayerID IN NUMBER
)
RETURN NUMBER
IS
    v_TotalDuration NUMBER := 0;
BEGIN
    SELECT SUM(TO_NUMBER(REGEXP_SUBSTR(DURATION, '\d+')))
    INTO v_TotalDuration
    FROM INJURY
    WHERE PLAYER_ID = p_PlayerID;
    
    -- If no duration found, set total duration to 0
    IF v_TotalDuration IS NULL THEN
        v_TotalDuration := 0;
    END IF;
    
    RETURN v_TotalDuration;
END;
