Target=312051
#Get nearest corner, get m dist for nearest corner

#Grid Widths
gridWidth=seq(from=1, to=1000, by=2)

#Grid Corner
gridCorner=gridWidth^2

#Nearest corner
nC=gridCorner[which((abs(gridCorner-Target))==min((abs(gridCorner-Target))))]
if(Target>nC){nC=gridCorner[which(gridCorner==nC)+1]}
gW=gridWidth[which(gridCorner==nC)]
print(paste("Nearest initial corner estimate is",nC))
print(paste("Grid size is:",gW))

#Grid Topology
bottomRight = gW^2
bottomLeft = gW^2-(gW-1)
topLeft = gW^2-((gW-1)*2)
topRight = gW^2-((gW-1)*3)
corners<-c(topLeft,topRight,bottomRight,bottomLeft)
nCI<-corners[which(abs(corners-Target)==min(abs(corners-Target)))]
Adjustment=abs(Target-nCI)

#Manhattan distance if at a corner is gW-1

mD=(gW-1)-Adjustment
print(min(mD))
