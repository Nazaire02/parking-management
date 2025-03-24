page 50245 "Vehicule Cue"
{
    PageType = CardPart;
    SourceTable = Vehicule;
    ApplicationArea = All;
    Caption = 'Résumé des véhicules';

    layout
    {
        area(Content)
        {
            cuegroup(Cue1)
            {
                ShowCaption = false;
                field("Vehicule - Total"; Rec."Total Vehicule")
                {
                    ApplicationArea = All;
                    DrillDownPageID = "Vehicule List";
                    Editable = false;
                    Caption = 'Total Vehicule';
                }
            }
        }
    }
}