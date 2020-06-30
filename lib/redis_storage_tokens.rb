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

      def set_token( key, value )
        @db.set(key,value)
      end

      def get_token( key )
        @db.get(key)
      end

      def del_token( key )
        @db.del(key)
      end

    end
end

