require "redis_storage_tokens/version"
require "redis"
require "redis-namespace"

module RedisStorageTokens
  class Storage

    def initialize(redis_uri, namespace = :jwt)
      connection = Redis.new(url: redis_uri)
      namespace  = Redis::Namespace.new(namespace, redis: connection) 
      @db = namespace
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

