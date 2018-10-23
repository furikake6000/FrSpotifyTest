class UsersController < ApplicationController
  def spotify
    authdata = RSpotify::User.new(request.env['omniauth.auth'])

    # Find logged in user
    @user = User.find_by(email: authdata.email)
    # If no user found, create new user
    @user = User.create(
      name: authdata.display_name,
      email: authdata.email,
      spotifydata: authdata.to_hash
    )

    # !!!NOTICE!!! User's "spotifydata" is raw hash data.
    # This is not safe for public use. Be sure to encrypt it in future.

    redirect_to root_path
  end
end