require './lib/message'

DataMapper.setup(:default, "postgres://localhost/chitter_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_migrate! if ENV['RACK_ENV'] == 'test'
# DataMapper.auto_migrate!
DataMapper.auto_upgrade!
