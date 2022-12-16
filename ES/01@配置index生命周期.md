# kibana设置index自动删除策略

1. #### 创建**Index Lifecycle Policies**

   - 关闭滚动更新
     - ![img](https://qh1cftpq20.feishu.cn/space/api/box/stream/download/asynccode/?code=NWFkZWE1NzJjYTZkMGRiMTM3NjJmYTc0YmQ3ZjcyMmVfWTJQVENzc2Ewd2Ezb0NFc1lXMFRQTzZnR1JLUzNYNnBfVG9rZW46Ym94Y25UUEVCaXhwa3ZwV0hqckFxU3FKckJlXzE2NzExNjExODU6MTY3MTE2NDc4NV9WNA)
   - 开始自动删除功能

   ![img](https://qh1cftpq20.feishu.cn/space/api/box/stream/download/asynccode/?code=N2ViMjM2NGE5ZWM3MDFjMzIzNTI2NGQ4OTE0YjM0ODNfbGtsNTgyMEJqSEYzbGRmRmhxcHBuVDZSUUhRbExQZ1NfVG9rZW46Ym94Y25sTFBEWkQ2WnR0R2RRY1JHZ0ZpR2RkXzE2NzExNjExODU6MTY3MTE2NDc4NV9WNA)

   -  设置存活时间

   ![img](https://qh1cftpq20.feishu.cn/space/api/box/stream/download/asynccode/?code=YjZjNmMyMjMzNDg5NzVlMzAwN2IyMTQ3OWZlZTMwMWRfRTZ5Zk1wODkybUxNRWc5b1hZQ01NblNEVmxVc1RjZERfVG9rZW46Ym94Y25QUHNNZ1U3cXpSYXJWNjdraWc2dFljXzE2NzExNjExODU6MTY3MTE2NDc4NV9WNA)

1. #### 创建索引模版

   - 输入名字，及索引关键字
     - ![img](https://qh1cftpq20.feishu.cn/space/api/box/stream/download/asynccode/?code=ZmExNWE5M2ExMDZmMTkxYzBiODQ3OTEwYTFkNDQ4NjhfaWw1elJOTEZqVGl4SWgyRklVSVBDMGhtM3lvM0pTOGdfVG9rZW46Ym94Y245Z1hjOXRxSUV6MlBOdHpNVGhFdTI3XzE2NzExNjExODU6MTY3MTE2NDc4NV9WNA)
   - 第二步可查看设置模版

   ![img](https://qh1cftpq20.feishu.cn/space/api/box/stream/download/asynccode/?code=YWQ2YzI0NDlhODZlZjJhZTg1MWQwMjdjNGM2ZDBjNTNfdkRZTGtZSHFFOTY3SkVuSGg2Q1pURTYzaFQyeFZ0VFlfVG9rZW46Ym94Y251a243NFhldEY2R2JWbmdUb2pBa0VmXzE2NzExNjExODU6MTY3MTE2NDc4NV9WNA)

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
           "*"
         ]
       }
     }
   }
   ```