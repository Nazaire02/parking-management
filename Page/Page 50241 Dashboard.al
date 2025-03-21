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

        }
    }

    actions
    {
        // area(Creation)
        // {
        //     action(ActionBarAction)
        //     {
        //         RunObject = Page ObjectName;
        //     }
        // }
        // area(Sections)
        // {
        //     group(SectionsGroupName)
        //     {
        //         action(SectionsAction)
        //         {
        //             RunObject = Page ObjectName;
        //         }
        //     }
        // }
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
                RunObject = Page "Reservation List";
                Caption = 'Liste des réservations';
                ApplicationArea = All;
            }
        }
    }
}

profile PackingManager
{
    Description = 'PackingManager';
    RoleCenter = Dashboard;
}