page 50244 "Customer cue"
{
    PageType = CardPart;
    ApplicationArea = All;
    Caption = 'Client résumé';
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            cuegroup(Cue3){
                showCaption = false;
                field("Customer-total"; Rec."Total Driver")
                {
                    ApplicationArea = All;
                    DrillDownPageID = "Customer List";
                    Editable = false;
                    Caption = 'Total Customer';
                }
            }
        }
    }
}