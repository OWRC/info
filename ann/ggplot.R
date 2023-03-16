



library(dplyr)
library(ggplot2)




# https://github.com/brandonyph/MLP-Animation
generate_data <- function(no_nodes_per_layer = c(2, 3, 2, 3, 2)) {
  
  layers <- length(no_nodes_per_layer)
  if(length(no_nodes_per_layer) < layers){
    no_nodes_per_layer <- c(no_nodes_per_layer,seq(1,layers-length((no_nodes_per_layer))))
  }
  df <- c()
  max_nodes <- max(no_nodes_per_layer)
  
  ##Creating layers
  for (i in 1:layers) {
    df$layer <- c(df$layer, rep(i, no_nodes_per_layer[i]))
  }
  
  ##Creating nodes
  for (i in 1:layers) {
    nodes_no <- no_nodes_per_layer[i]
    diff <- (max_nodes - nodes_no)/2
    df$nodes <- c(df$nodes,seq(1,nodes_no)+diff)
  }
  df$epoch <- rep(1, length(df$layer))
  df$sizes <- rep(5, length(df$layer))
  
  
  return(as.data.frame(df))
}


design <- c(7, 3, 3, 1)
ninputs <- length(design)

df <- generate_data(design)

# add spacing
spacing1 <- function() {
  s <- df[df$layer==1,'nodes']
  for (i in 2:(design[[1]])) s[i] = s[i] + .2
  for (i in 3:(design[[1]])) s[i] = s[i] + .1
  for (i in 5:(design[[1]])) s[i] = s[i] + .2
  for (i in 6:(design[[1]])) s[i] = s[i] + .1
  return(s - .25)
}
spacing2 <- function() {
  s <- df[df$layer==2,'nodes']
  for (i in 2:(design[[2]])) s[i] = s[i] + .2
  return(s - .1)
}

s1 <- spacing1()
df[df$layer==1,'nodes'] = s1
s2 <- spacing2()
df[df$layer==2,'nodes'] = s2

# add dots
ss <- .1 # points spacing
p11 <- (s1[[3]]+s1[[2]])/2
p12 <- (s1[[6]]+s1[[5]])/2
p21 <- (s2[[2]]+s2[[1]])/2
dots <- list(
  x = c(1,1,1,
        1,1,1,
        2,2,2,
        3,3,3),
  y = c(p11-ss,p11,p11+ss,
        p12-ss,p12,p12+ss,
        p21-ss,p21,p21+ss,
        p21-ss,p21,p21+ss)
)



p <- df %>%
  ggplot(aes(layer,nodes)) +
  annotate('text', df[df$layer==1,'layer']-.2, rev(df[df$layer==1,'nodes']), 
           label=c('q[t-1]', 'q[t-2]', 'q[t-n-1]', 'p[t]', 'p[t-1]', 'p[t-n]', 'f(t)'),
           parse=TRUE) +
  annotate('text', df[df$layer==max(df$layer),'layer']+.2, rev(df[df$layer==max(df$layer),'nodes']),
           label=c('q[t]'),
           parse=TRUE) +
  geom_point(data=as.data.frame(do.call(cbind, dots)),aes(x,y))
           
           
           

# add linkages
for (i in 1:(ninputs - 1)) {
  for (j in 1:(design[i])) {
    for (o in 1:(design[i + 1])) {
      #print(paste0("i-", i))
      #print(paste0("j-", j))
      #print(paste0("o-", o))
      
      x1 <- i
      y1 <- df[df$layer == i, ]$nodes[j]
      x2 <- i + 1
      y2 <- df[df$layer == (i + 1), ]$nodes[o]
      
      coor <- data.frame(x = c(x1, x2), y = c(y1, y2))
      
      p <- p + geom_path(data = coor, aes(x = x, y = y), size=1,color="black")
    }
  }
}


p <- p + geom_point(color='black', fill='pink', shape=21, size=10, stroke=2)

print(p)

# ggsave(paste0("plot-",k,".jpg"),
#        width = 1920,
#        height = 1080,
#        units = c("px"),
#        dpi = 300)
               