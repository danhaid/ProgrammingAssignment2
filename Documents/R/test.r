path<-"C:\\Users\\danhaid\\Documents\\R\\specdata\\001.csv"
file<-read.csv(path)
complete_cases<-sum(complete.cases(file))
icorr<-cor(file$sulfate,file$nitrate,use="na.or.complete")
print(icorr)