select schemaname,relname,seq_scan,idx_scan,cast(idx_scan as numeric) / (idx_scan + seq_scan)
 as idx_scan_pct 
 from pg_stat_user_tables where (idx_scan +seq_scan) >0 order by idx_scan_pct;