#' @title Hello,world
#'
#' @description This is an example function named Hello.R, which prints `Hello, World!!`
#' @param times The number of times to print
#' @return a ggplot object
#' @examples
#' temp1 <- hello(times=1);
#' temp2 <- hello();
#' @importFrom ggplot2 ggplot geom_text geom_point aes scale_x_continuous
#' @importFrom RColorBrewer brewer.pal.info
#' @export
#'

hello<-function(times=1){
  x<-rep("Hello,World!!",times=times)
  cat(paste0(x,collapse="\n"))
  p=ggplot()+geom_point(aes(x=1:length(x),y=1:length(x)),size=2)+
    geom_text(aes(x=1:length(x),y=1:length(x)),label=x,vjust=1,hjust=0,color="red")+
    scale_x_continuous(expand = c(0.1,0.1,0.3,0.1))
  return(p)
}

