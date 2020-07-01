RSpec.describe RedisStorageTokens do
  it "has a version number" do
    expect(RedisStorageTokens::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

  it "create instace of storage" do
    redis = RedisStorageTokens::Storage.new('redis://localhost:6379/1')
    redis.add("key","value")
    result = expect(redis.find("key")).to eq("value")
    redis.delete("key")
    result
  end

  
end
