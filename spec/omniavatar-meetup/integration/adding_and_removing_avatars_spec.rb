require 'spec_helper'
require 'omniavatar/null_avatar'

module OmniAvatar
  module HasAvatar
    def avatar
      NullAvatar.new
    end

    def add_avatar(avatar)

    end
  end

  class Avatar
  end

  class Provider
  end

  module Providers
    class Meetup < ::OmniAvatar::Provider
      def build_avatar(meetup_data)

      end
    end
  end
end

class User
  include OmniAvatar::HasAvatar
end

describe "adding and removing avatars from a user" do
  let(:user)             { User.new }
  let(:provider)         { OmniAvatar::Providers::Meetup.new }
  let(:meetup_user_data) { "some data" }

  it "should have no avatar by default" do
    expect(user.avatar).to be_a OmniAvatar::NullAvatar
    expect(user.avatar).to be_nil
    expect(user.avatar).to be_false
    expect(user.avatar.url).to be_nil
  end

  pending "should add an avatar and persist it" do
    user.add_avatar provider.build_avatar(meetup_user_data)

    expect(user.avatar).to be_a OmniAvatar::Avatar
    expect(user.avatar.url).to eql expected_url
  end
end