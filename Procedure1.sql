CREATE OR REPLACE PROCEDURE UpdateInjuryTreatment(
    p_InjuryID IN NUMBER,
    p_Treatment IN VARCHAR2,
)
IS
BEGIN
    UPDATE injury
    SET treatment = p_Treatment,
    WHERE injury_id = p_InjuryID;
   
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Injury treatment updated successfully.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Injury not found.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred while updating the injury treatment .');
END;
