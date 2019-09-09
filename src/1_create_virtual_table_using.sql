.load /home/pi/root/sys/env/tool/sqlite_ext/fts5_mecab
create virtual table posts using fts5(title, body, tokenize = 'mecab');
insert into posts values('記事のタイトル', '記事の本文。');
insert into posts values('SQLite3 VirtualTable', '仮想テーブルについての記事。');
select * from posts where posts match 'SQLite3';

.headers on
select * from sqlite_master where sql like 'CREATE VIRTUAL TABLE %';

