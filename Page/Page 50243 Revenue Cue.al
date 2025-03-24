page 50243 "Revenue Cue"
{
    PageType = CardPart;
    ApplicationArea = All;
    Caption = 'Revenue résumé';
    SourceTable= Reservation;
    
    layout
    {
        area(Content)
        {
            cuegroup(Cue2){
                ShowCaption = false;
                // field("ParkingSlots - Total"; Rec."Total Slot")
                // {
                //     ApplicationArea = All;
                //     DrillDownPageID = "ParkingSlot List";
                //     Editable = false;
                //     Caption = 'Total Parking Slots';
                // }
            }
        }
    }
}