page 50242 "ParkingSot Cue"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Résumé du parc de stationnement';
    SourceTable = ParkingSlot;

    layout
    {
        area(Content)
        {
            cuegroup(Cue1)
            {
                ShowCaption = false;
                field("ParkingSlots - Total"; Rec."Total Slot")
                {
                    ApplicationArea = All;
                    DrillDownPageID = "ParkingSlot List";
                    Editable = false;
                    Caption = 'Total Parking Slots';
                }
                field("ParkingSlots - Occupied"; Rec."Occupied Slot")
                {
                    ApplicationArea = All;
                    DrillDownPageID = "ParkingSlot List";
                    Editable = false;
                    Caption = 'Occupied Parking Slots';
                }
                field("ParkingSlots - Available"; Rec."Available Slot")
                {
                    ApplicationArea = All;
                    Editable = false;
                    DrillDownPageID = "ParkingSlot List";
                    Caption = 'Available Parking Slots';
                }
            }
        }
    }
}