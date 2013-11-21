module UsersHelper
  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size: 50 })
    if !user.grav_email.nil?
      gravatar_id = Digest::MD5::hexdigest(user.grav_email.downcase)
      size = options[:size]
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
      image_tag(gravatar_url, alt: user.name, class: "gravatar")
    else 
      '<i class="fa fa-user"></i>'
    end
  end
end
