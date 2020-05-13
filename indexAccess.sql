select relname,cast(idx_blks_hit as numeric) /(idx_blks_hit + idx_blks_read )
  as hit_pct,idx_blks_hit,idx_blks_read from pg_statio_user_tables 
  where (idx_blks_hit +idx_blks_read) >0 order by hit_pct;