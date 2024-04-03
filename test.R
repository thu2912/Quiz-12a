
simulated_data $Hospital|> class() == "character"
simulated_data $Year |> class() == "numeric" 
simulated_data $Population_Density|> class() == "numeric"  
simulated_data $Average_Age|> class() == "numeric"   
simulated_data $Screening_Programs |> class() == "numeric"  
simulated_data $Cancer_Deaths |> class() == "numeric" 
simulated_data $Year |> max() == 2024
simulated_data $Year |> min() == 2004
simulated_data $Screening_Programs |> max() == 1 
simulated_data $Screening_Programs |> min() == 0