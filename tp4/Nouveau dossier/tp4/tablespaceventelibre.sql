create tablespace VENTELIBRE
datafile 'G:\oracle\app\oracle\oradata\XE\VENTELIBRE.dbf'
size 512M autoextend on next 256M;
create user usrvente identified by 12345 default tablespace VENTELIBRE temporary tablespace TEMP;
grant connect, resource, dba, imp_full_database to usrvente;
grant all privileges to usrvente;
