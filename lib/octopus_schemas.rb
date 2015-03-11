require "octopus_schemas/version"
require 'awesome_print'

class OctopusSchemas

  attr_accessor :shard_file_path
  def initialize(shard_file_path)
    @shards_file_path = shard_file_path
  end
  def generate_schema
    config = YAML::load_file(@shards_file_path)
  end

  def shards
    ActiveRecord::SchemaDumper.dump(ActiveRecord::Base.connection, stream)
  end

  def connect(database)
    ActiveRecord::Base.establish_connection(database).connection
  end
#1. Connect to each shard
#2. Dump via rake db:schema:dump on each shard
#3. Profit???
end
