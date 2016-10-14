clear; clc;
load Weather;
BD_Row = find(W.YEAR == 1997 & W.MONTH == 2 & W.DAY == 10);
W(BD_Row,:);


PRCP_Max = max(W.PRCP);
PRCP_Max_row = find(W.PRCP == PRCP_Max);
W(PRCP_Max_row,:);


Days_Above_90 = sum(W.YEAR == 2013 & W.TMAX > 90);
Count = 0;
for year = 2011:2:2015
 Count = Count + 1;
 Row = find(W.YEAR == 2015 & W.MONTH == 4);
PRCP_Mean(Count) = mean(W.PRCP(Row));
PRCP_STD(Count) = std(W.PRCP(Row));
PRCP_Total(Count) = sum(W.PRCP(Row));  
end

%%
Count = 0; 
Year_Vector = 1970:2014;
for year = 1970:2014
 Count = Count + 1;
 Rows = find(W.YEAR == year);
PRCP_Total(Count) = sum(W.PRCP(Rows));

end
plot(1970:2014,PRCP_Total,'ro--');hold on;
xlabel('\bfYear','FontSize', 14);    
    
MaxPRCP = Year_Vector(find(PRCP_Total == max(PRCP_Total)));
MinPRCP = Year_Vector(find(PRCP_Total == min(PRCP_Total)));



    

