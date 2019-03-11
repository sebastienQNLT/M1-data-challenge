library(DataExplorer)
data_list <- list(vehicules.2017, lieux.2017, usagers.2017, caracteristiques.2017)
plot_str(data_list)

merge_1 <- merge(caracteristiques.2017, lieux.2017, by = "Num_Acc", all.x = TRUE)
merge_2 <- merge(merge_1, vehicules.2017, by = "Num_Acc", all.x = TRUE)
final_data<- merge(merge_2, usagers.2017, by = "Num_Acc", all.x = TRUE)

#general overview ----
introduce(final_data)
plot_intro(final_data)

#missing values ----
plot_missing(final_data)
profile_missing(final_data)

plot_bar(final_data)
plot_histogram(final_data)
