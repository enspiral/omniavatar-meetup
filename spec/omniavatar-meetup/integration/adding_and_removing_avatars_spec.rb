class User
  include OmniAvatar::HasAvatar
end

describe "adding and removing avatars from a user" do
  let(:user) { User.new }

  it "should have no avatar by default" do
    expect(user.avatar).to be_a OmniAvatar::NullAvatar
    expect(user.avatar).to be_nil
    expect(user.avatar).to be_false
    expect(user.avatar.url).to be_nil
  end

  it "should add an avatar and persist it" do
    user.add_avatar factory.build_avatar(meetup_user_data)

    expect(user.avatar).to be_a OmniAvatar::Avatar
    expect(user.avatar.url).to eql expected_url
  end
end