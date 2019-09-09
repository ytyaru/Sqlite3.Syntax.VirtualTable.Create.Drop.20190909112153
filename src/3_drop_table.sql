.load /home/pi/root/sys/env/tool/sqlite_ext/fts5_mecab
create virtual table posts using fts5(title, body, tokenize = 'mecab');
drop table posts;
drop table if exists posts;

