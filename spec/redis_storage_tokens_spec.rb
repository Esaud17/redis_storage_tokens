RSpec.describe RedisStorageTokens do
  it "has a version number" do
    expect(RedisStorageTokens::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end

  it "create instace of storage" do
    redis = RedisStorageTokens::Storage new
    expect(redis).to eq(RedisStorageTokens::Storage)
  end
end
