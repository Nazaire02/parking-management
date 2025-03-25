codeunit 50248 Calculator
{
    trigger OnRun()
    begin

    end;

    procedure ConvertMinutes(TotalMinutes: Integer): Integer
    var
        Months, Weeks, Days, Hours : Integer;
        RemainingMinutes: Integer;
        Times: array[4] of Integer;
    begin
        RemainingMinutes := TotalMinutes;

        // Times[3] := RemainingMinutes div (60 * 24 * 30);
        // RemainingMinutes := RemainingMinutes - (Times[3] * 60 * 24 * 30);

        // Times[2] := RemainingMinutes div (60 * 24 * 7);
        // RemainingMinutes := RemainingMinutes - (Times[2] * 60 * 24 * 7);

        // Times[1] := RemainingMinutes div (60 * 24);
        // RemainingMinutes := RemainingMinutes - (Times[1] * 60 * 24);

        Times[0] := RemainingMinutes div 60;
        RemainingMinutes := RemainingMinutes - (Times[0] * 60);
        if RemainingMinutes > 0 then begin
            Times[0] := Times[0] + 1;
        end;
        exit(Times[0]);
    end;
}