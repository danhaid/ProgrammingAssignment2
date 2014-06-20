pollutantmean <- function(directory, pollutant, id = 1:332) {
        data<-NULL
        if(pollutant=="sulfate"){
                colum<-2
        }
        else if(pollutant=="nitrate"){
                colum<-3
        }
        else{
                break
        }
        
        for (i in id) {
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
                data2<-read.csv(path)
                data<-rbind(data,data2)
                
        }
        mean_data<-(mean(na.omit(data[,colum])))
        print (mean_data)
}