page 50235 "ParkingZone Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ParkingZone;
    Caption = 'Ajouter un new parking';

    layout
    {
        area(Content)
        {
            group("Infos du parking")
            {
                field(Name; Rec.Name)
                {

                }
                field(Location; Rec.Location)
                {

                }
                field(Capacity; Rec.Capacity)
                {

                }
                field(Status; Rec.Status)
                {

                }
                field(HourlyRate; Rec.HourlyRate)
                {
                    trigger OnValidate()
                    begin
                        Rec.DailyRate := Rec.HourlyRate * 24;
                        Rec.MonthlyRate := Rec.DailyRate * 30;
                    end;
                }
                field(DailyRate; Rec.DailyRate)
                {

                }
                field(MonthlyRate; Rec.MonthlyRate)
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
        dailyRateEst: Decimal;
        monthlyRateEst: Decimal;
}