#!/bin/bash


mysqldump -u backup -pBackupPass123! ShopDB > ShopDBReserve.sql


mysql -u backup -pBackupPass123! ShopDBReserve < ShopDBReserve.sql


mysqldump -u backup -pBackupPass123! --no-create-info ShopDB > ShopDBDevelopment.sql


mysql -u backup -pBackupPass123! ShopDBDevelopment < ShopDBDevelopment.sql