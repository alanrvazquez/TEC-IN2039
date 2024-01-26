# install.packages("hexSticker")

library(hexSticker)
library(ggplot2)

RD <- scan()
0.812
3.43
3.624
1.59
4.979
2.147
6.633
1.725
3.105
6.633
3.43
3.624
1.645
1.862
5.194
1.584
3.445
2.731
2.631
5.194
2.815
1.2
2.26
2.395
1.592
1.419
2.818
3.257
2.753
5.064
2.036
1.417
1.618
1.835
1.662
3.448
4.144
4.121
2.659
3.588
3.481
2.056
1.395
1.586
3.225
4.052
1.689
1.738
1.973
1.335
1.916
5.194
2.613
1.079
2.433
1.365
1.29
4.704
2.633
5.649
1.288
3.459
3.193
1.71
2.058
3.022
4.438
4.568
3.286
7.775
7.401
1.988
2.149
4.012
1.479
3.351
2.745
3.856
1.826
1.84
2.136
4.32
4.776
1.791
7.401

UPG <- scan()
76
64
64
70
64
76
64
76
76
64
64
64
70
70
64
76
64
64
64
64
76
70
70
70
76
76
64
64
64
64
64
64
64
76
76
64
64
64
64
64
64
70
70
70
76
64
64
70
70
76
76
64
70
70
64
76
76
76
64
64
76
70
76
64
76
64
64
64
64
64
64
70
70
64
76
64
64
70
76
76
64
64
64
76
64

datap <- data.frame("RD" = RD, "UPG" = factor(UPG))

p <- ggplot(datap, aes(x=UPG, y=RD)) 
p <- p +  geom_boxplot(fill = "lightblue",outlier.shape=4,outlier.color = "#e07b39",notch=TRUE) #"#e07b39"
p <- p + theme_void() + theme_transparent() + theme(legend.position="none")
#p <- ggplot(aes(x = UPG, y = RD), data = datap) + geom_point(col = "white")
#p <- p + geom_smooth(method = "loess")
#p <- p + theme_void() + theme_transparent()

sticker(p, package="IN2039", p_size=8, s_x=1, s_y=.75, 
        s_width=1.3, s_height=1, h_fill="#53bbd8", h_color="#195e83",
        filename="IN2039_logo.png")

# Help
# https://imagecolorpicker.com/en
