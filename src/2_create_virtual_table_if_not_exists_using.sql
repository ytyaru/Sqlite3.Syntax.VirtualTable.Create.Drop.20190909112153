.load /home/pi/root/sys/env/tool/sqlite_ext/fts5_mecab
create virtual table posts using fts5(title, body, tokenize = 'mecab');
create virtual table if not exists posts using fts5(title, body, tokenize = 'mecab');

