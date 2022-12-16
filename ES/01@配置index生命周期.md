# kibana设置index自动删除策略

1. #### 创建**Index Lifecycle Policies**
   - 关闭滚动更新:
   
     ![img](../img/Snipaste_2022-12-16_14-18-37.png)
   - 开始自动删除功能:
   
     ![img](../img/Snipaste_2022-12-16_14-20-33.png)
   -  设置存活时间
   
     ![img](../img/Snipaste_2022-12-16_14-21-37.png)

1. #### 创建索引模版
   - 输入名字，及索引关键字
   
     ![img](../img/Snipaste_2022-12-16_14-23-04.png)
   - 第二步可查看设置模版
   
     ![img](../img/Snipaste_2022-12-16_14-23-42.png)

   - 第三步填写设置

   ```JSON
   {
     "index": {
       // 管理的生命周期策略
       "lifecycle": {
         "name": "training-dev-test-staging-7days"
       },
       // 压缩算法
       "codec": "best_compression",
       // 默认查询字段
       "query": {
         "default_field": [
           "trace","content","sql"
         ]
       }
     }
   }
   ```