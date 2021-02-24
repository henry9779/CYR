With the expansion of business, the number of website users is increasing. The original data table has grown to the point where it is very slow to read and write data. Please describe how you will handle this from the two aspects of reading and writing.

我會先去檢查程式碼，利用套件 N + 1 bullet 查詢有沒有 N + 1 的問題<br/>
https://github.com/flyerhzm/bullet<br/>
以及 Rack-mini-Profiler 查詢網頁 Query 花費的時間及次數<br/>
https://github.com/MiniProfiler/rack-mini-profiler<br/>
然後針對 client_slow 檢查伺服器是否能調整 worker 跟 threads，不會因為使用者連線速度慢而佔著線路而影響其他使用者連線<br/>
查詢完後跟團隊討論有哪些可以改進的地方，然後作修改<br/><br/>
另外針對資料庫會跟團隊討論是否可以對常用的表單增加索引或者使用讀寫分離提高資料庫查詢速度<br/>
以上是我目前想到的，希望有回答到您的問題。
