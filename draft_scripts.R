for (i in 2003:2022){
  
  paste("sqf_",as.character(i),sep = "") <- read_csv(
    paste("./data/",as.character(i),".csv", sep = ""
    )
  )
}


# For csv files

file_paths_csv <- fs::dir_ls("./data/2003_2015_csv_files")

file_contents_csv <- list()

for (i in seq_along(file_paths_csv)){
  file_contents_csv[[i]] <-read_csv(
    file = file_paths_csv[[i]]
  )
}

file_contents_csv <- set_names(file_contents_csv,file_paths_csv)

# For excel files

file_paths_xl <- fs::dir_ls("./data/2016_2022_xl_files")

file_contents_xl <- list()

for (i in seq_along(file_paths_xl)){
  file_contents_xl[[i]] <-read_csv(
    file = file_paths_xl[[i]]
  )
}

# With purr csv

file_paths_csv <- fs::dir_ls("./data/2003_2015_csv_files")

file_contents_csv<- file_paths_csv |>
  map(function (path){
    read_csv(path)
  })

# with purr excel
file_paths_xl <- fs::dir_ls("./data/2016_2022_xl_files")

file_contents_xl<- file_paths_xl |>
  map(function (path){
    read_excel(path)
  })


years <- c(2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022 )
stops_frisks <- c(160851, 313523, 398191, 506491, 472096, 540302, 581168,  601285, 685724, 532911,  191851, 45787, 22563, 12405, 11629,  11008,   13459,9544 , 8947,  15102)  

data.frame(years,stops_frisks)



../data/2003_2015_csv_files/.csv ../data/2003_2015_csv_files/.csv ../data/2003_2015_csv_files/.csv 

