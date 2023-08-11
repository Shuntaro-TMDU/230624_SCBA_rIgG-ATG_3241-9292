setwd("/Users/shuntaro/Documents/R/CW/230624_SCBA_rIgG,ATG_3241,9292")
getwd()

# 必要なパッケージのインストール
sessionInfo()
install.packages("conflicted")
library("tidyverse")

# set
## データの読み込み
setwd("/Users/shuntaro/Documents/R/CW/230624_SCBA_rIgG,ATG_3241,9292/R_input")

df1_1 = read_csv("3241_ATG3hr_1.csv")
df1_2 = read_csv("3241_ATG24hr_1.csv")
df1_3 = read_csv("9292_rIgG24hr_1.csv")
df1_4 = read_csv("9292_rIgG24hr_3.csv")
df1_5 = read_csv("9292_rIgG24hr_4.csv")

## データの書き出し
setwd("/Users/shuntaro/Documents/R/CW/230624_SCBA_rIgG,ATG_3241,9292/R_output")

write_csv(df.joined.IN30.1, "Ly6G_Parameter_IN30.1.csv")
write_csv(df.meta.1, "Ly6G_Metadata.1.csv")


# pca 
## データの読み込み
setwd("/Users/shuntaro/Documents/R/CW/230624_SCBA_rIgG,ATG_3241,9292/R_output")

df.joined.IN30.1 = read_csv("Ly6G_Parameter_IN30.1.csv")
df.meta = read_csv("Ly6G_Metadata.csv")

## データの書き出し
setwd("/Users/shuntaro/Documents/R/CW/230624_SCBA_rIgG,ATG_3241,9292/R_output")

write_csv(df.param.IN6.normalized.1, "Ly6G_Param_IN6_Normalized.csv")
tiff(filename = "HM.IN30.tiff", width = 800, height = 600)
HM.IN30.clustered
dev.off()

ggsave("PCA_Condition.tiff", width = 7, height = 7)
ggsave("PCA_Cluster.tiff", width = 7, height = 7)
ggsave("UMAP_Condition.tiff", width = 7, height = 7)
ggsave("UMAP_Cluster.tiff", width = 7, height = 7)

ggsave("Ratio_wATG3hr.tiff", width = 10, height = 5)
ggsave("Ratio_w0ATG3hr.tiff", width = 10, height = 3)

ggsave("BG_ATG24hr_1_Object.tiff", width = 6, height = 6)
ggsave("BG_ATG24hr_1_Track.tiff", width = 6, height = 6)

