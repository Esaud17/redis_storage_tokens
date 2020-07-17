require "redis_storage_tokens/version"
require "redis"
require "redis-namespace"

module RedisStorageTokens
  class Storage

    def initialize(redis_uri, namespace = :jwt)
      begin 
        connection = Redis.new(url: redis_uri)
        connection.ping
        namespace  = Redis::Namespace.new(namespace, redis: connection) 
        @db = namespace
      rescue Errno::ECONNREFUSED => e
        puts "Error: Redis server unavailable. Shutting down..."
        exit 1
      end
    end 

    attr_accessor :db
    private :db

    public 

      def add( key, value )
        @db.set(key,value)
      end

      def find( key )
        @db.get(key)
      end

      def delete( key )
        @db.del(key)
      end

    end
end

