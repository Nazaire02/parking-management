codeunit 50249 Validation
{
    trigger OnRun()
    begin

    end;

    procedure "RequiredParkingSlot"(ParkingSlot: Integer)
    var
        myInt: Integer;
    begin
        if ParkingSlot = 0 then begin
            Error('Veuillez choisir un emplacement de parking avant de continuer.');
        end;
    end;
}