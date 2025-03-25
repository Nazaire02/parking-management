page 50241 Dashboard
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Dashboard';

    layout
    {
        area(RoleCenter)
        {
            part("ParkingSlot Cue"; "ParkingSot Cue") { }
            part("Vehicule Cue"; "Vehicule Cue") { }
            part("Customer cue"; "Customer cue") { }
        }
    }

    actions
    {
        area(Embedding)
        {
            action(Vehicule)
            {
                RunObject = Page "Vehicule List";
                Caption = 'Liste des véhicules';
                ApplicationArea = All;
            }
            action(Driver)
            {
                RunObject = Page "Driver List";
                Caption = 'Liste des chauffeurs';
                ApplicationArea = All;
            }
            action(ParkingZone)
            {
                RunObject = Page "ParkingZone List";
                Caption = 'Liste des zones de stationnement';
                ApplicationArea = All;
            }
            action(ParkingSlot)
            {
                RunObject = Page "ParkingSlot List";
                Caption = 'Liste des places de parking';
                ApplicationArea = All;
            }
            action(Reservation)
            {
                RunObject = Page "ParkingRecord List";
                CaptionML = ENU = 'Tracks each parking session', FRA = 'Suivi de chaque session de stationnement';
                ApplicationArea = All;
            }
        }
    }

    var
        Driver: Record "Customer";
}

profile PackingManager
{
    Description = 'PackingManager';
    RoleCenter = Dashboard;
}