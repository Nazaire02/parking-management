report 50203 ParkingRecord
{
    DefaultLayout=RDLC;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = './Report/RDLC/ParkingRecord.rdlc';
    Caption = 'Parking Record Report';
    
    dataset
    {
        dataitem(DataItemName; ParkingRecord)
        {
            column(ParkingZone_Name;"ParkingZone Name")
            {
                
            }
            column(Vehicule_Matricule;"Vehicule Matricule")
            {
                
            }
            column(Customer_Name;"Customer Name")
            {
                
            }
            column(StartDate;StartDate)
            {
                
            }
            column(StartTime;StartTime)
            {
                
            }
            column(EndDate;EndDate)
            {
                
            }
            column(EndTime;EndTime)
            {
                
            }
            column(Total_Amount;"Total Amount")
            {
                
            }
            column(Hourly_Rate;"Hourly Rate")
            {
                
            }
            column(Daily_Rate;"Daily Rate")
            {
                
            }
        }
    }
    
    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                        
                    // }
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(LayoutName)
                {
                    
                }
            }
        }
    }
    
    var
        myInt: Integer;
}