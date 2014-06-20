corr <- function(directory, threshold=0) {
        corrs<-NULL
        for (i in 1:332) {
                if (i < 10){
                        num<-"00"
                }
                else if (i<100){
                        num<-"0"
                }
                else{
                        num<-""
                }
                path<-paste("C:\\Users\\danhaid\\Documents\\R\\",directory,"\\",num,i,".csv",sep="")
                file<-read.csv(path)
                complete_cases<-sum(complete.cases(file))
                if(complete_cases>threshold){
                        icorr<-cor(file$sulfate,file$nitrate,use="na.or.complete")
                        corrs<-c(corrs,icorr)       
                }
        }
        print(corrs)
}