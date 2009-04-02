integrity Mash.new unless attribute?(:integrity)
integrity[:url] = "http://integrity.37signals.com/" unless integrity.has_key?(:url)
integrity[:path] = "/u/apps/integrity" unless integrity.has_key?(:path)
integrity[:db_uri] = "sqlite3://#{integrity[:path]}/integrity.db" unless integrity.has_key?(:db_uri)
integrity[:export_dir] = "#{integrity[:path]}/builds" unless integrity.has_key?(:export_dir)
integrity[:log_file] = "#{integrity[:path]}/log/integrity.log" unless integrity.has_key?(:log_file)
integrity[:basic_auth] = "true" unless integrity.has_key?(:basic_auth)
integrity[:admin_username] = "admin" unless integrity.has_key?(:admin_username)
integrity[:admin_password] = "1c268f6d888b91f55503f2a36c4ea69c" unless integrity.has_key?(:admin_password)
integrity[:hash_admin_password] = "true" unless integrity.has_key?(:hash_admin_password)

applications[:integrity] = { :gems => [ 'integrity', 'do_sqlite3' ] }
