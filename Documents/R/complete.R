complete <- function(directory, ide = 1:332) {
        id<-NULL
        nobs<-NULL
        for (i in ide) {
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
                        id<-c(id,i)
                        nobs<-c(nobs,complete_cases)
                }
        table<-data.frame(id,nobs)
        print(table)
}