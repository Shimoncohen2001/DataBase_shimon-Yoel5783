CREATE OR REPLACE FUNCTION GenerateInjuryReport(p_ReportName IN VARCHAR2) RETURN NUMBER
IS
    v_EntityCount NUMBER := 0;
BEGIN
    IF p_ReportName = 'Injury' THEN
        -- Injury report
        FOR injury_info IN (
            SELECT I_ID, I_TYPE, SEVERITY, DURATION, TREATMENT, I_HISTORY, PLAYER_ID, GAME_ID
            FROM Injury
        )
        LOOP
            v_EntityCount := v_EntityCount + 1;
            DBMS_OUTPUT.PUT_LINE('Injury ID: ' || injury_info.I_ID);
            DBMS_OUTPUT.PUT_LINE('Injury Type: ' || injury_info.I_TYPE);
            DBMS_OUTPUT.PUT_LINE('Severity: ' || injury_info.SEVERITY);
            DBMS_OUTPUT.PUT_LINE('Duration: ' || injury_info.DURATION);
            DBMS_OUTPUT.PUT_LINE('Treatment: ' || injury_info.TREATMENT);
            DBMS_OUTPUT.PUT_LINE('Injury History: ' || injury_info.I_HISTORY);
            DBMS_OUTPUT.PUT_LINE('Player ID: ' || injury_info.PLAYER_ID);
            DBMS_OUTPUT.PUT_LINE('Game ID: ' || injury_info.GAME_ID);
            DBMS_OUTPUT.PUT_LINE('-------------------');
        END LOOP;
    ELSE
        v_EntityCount := -1;
    END IF;

    RETURN v_EntityCount;
END;
/
