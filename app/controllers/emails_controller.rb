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
    new_email = "username7@example.com"
    contact = {
                lists: [
                  {
                  id: "1186006679"
                  }
                ],
                email_addresses: [
                  {
                  email_address: new_email
                  }
                ]
              }

    emails = cc.get_contacts(ENV['constant_contact_token']).results
    emails.map! { |c| c = c.email_addresses[0].email_address }

    duplicate_email = false
    emails.each do |email|
      if(new_email == email)
        duplicate_email = true
      end
    end

    @contact = nil
    if !duplicate_email
      @contact = cc.add_contact(ENV['constant_contact_token'], contact, false)
    else
      @error = "This email was already taken!"
    end

    #render "emails/posted_contact"
  end

  def post_contact
    redirect_to "users/sign_up"
  end

end
