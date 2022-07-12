--
--  Copyright (C) 2022 OpenLink Software
--

--
--  Add all files that end in .nt
--
ld_dir_all ('data', '*.nt', 'no-graph-1')
;

--
--  Add all files that end with .bz2, .gz or .xz to show that the Virtuoso bulkloader 
--  can load compressed files without manual decompression
--
ld_dir_all ('data', '*.bz2', 'no-graph-3')
;

ld_dir_all ('data', '*.gz', 'no-graph-2')
;

ld_dir_all ('data', '*.xz', 'no-graph-4')
;

--
--  Now load all of the files found above into the database
--
rdf_loader_run()
;

--
--  End of script
--
