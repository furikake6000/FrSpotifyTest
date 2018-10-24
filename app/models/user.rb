class User < ApplicationRecord
  def spotify
    # WARNING: this won't work well.
    RSpotify::User.new(spotifydata)
  end
end
