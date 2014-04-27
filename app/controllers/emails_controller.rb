class EmailsController < ApplicationController

  def get_key
    # @oauth = ConstantContact::Auth::OAuth2.new(
    #   :api_key => ENV['constant_contact_key'],
    #   :api_secret => ENV['constant_contact_secret'],
    #   :redirect_url => ENV['constant_contact_redirect'] # the URL given when registering your app with Mashery.
    # )

    # @error = params[:error]
    # @user = params[:username]
    # @code = params[:code]

    # if @code.present?
    #   response = @oauth.get_access_token(@code)
    #   if response.present?
    #     token = response['access_token']
    #     cc = ConstantContact::Api.new(ENV['constant_contact_key'])
    #     @contacts = cc.get_contacts(ENV['constant_contact_token'])

    #   end
    # else
    #   # if not code param is provided redirect into the OAuth flow
    #   redirect_to @oauth.get_authorization_url and return
    # end
    cc = ConstantContact::Api.new(ENV['constant_contact_key'])
    contact = {
                lists: [
                  {
                  id: "1186006679"
                  }
                ],
                email_addresses: [
                  {
                  email_address: "username5@example.com"
                  }
                ]
              }
    @contact = cc.add_contact(ENV['constant_contact_token'], contact, false)
    @contacts = cc.get_contacts(ENV['constant_contact_token'])

    #render "emails/posted_contact"
  end

  def post_contact
    redirect_to "users/sign_up"
  end

end
