# Step

https://github.com/debezium/debezium-examples/tree/main/tutorial

1. Build oracle docker image.

   ```shell
   ./src/oracle/buildOracleImage.sh
   ```

2. Docker compose up

    ```shell
    cd ./src/
    docker compose up --build
    ```

3. Prepare oracle directory
    
    ```shell
    docker exec -i src-oracle-1 bash -c "mkdir /opt/oracle/oradata/recovery_area"
    ```

4. Initialize Oracle

    ```shell
    docker exec -it src-oracle-1 bash
    # src/setup/setup-logminer.sh の内容をたたく
    ```

5. Register logminer

   Original: https://github.com/debezium/oracle-vagrant-box/blob/main/setup-logminer.sh  
   Hint: https://access.redhat.com/documentation/ja-jp/red_hat_integration/2022.q1/html/debezium_user_guide/descriptions-of-debezium-oracle-connector-configuration-properties  

   ```shell
   cd ./src/setup
   curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @register-oracle-logminer.json
   ```

6. PDB でテーブル作成後データインサートすると Kafka のトピックにデータが流れる

   ```shell
   run inventory.sql
   ```

# SQL Plus

```shell
sqlplus sys/Passw0rd@//localhost:1521/XE as sysdba
sqlplus sys/Passw0rd@//localhost:1521/XEPDB1 as sysdba
```
