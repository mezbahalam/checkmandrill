class PostMailer < ActionMailer::Base
  def post_created(user)
    mail(
        to: user.email,
        from: "email@example.com",
        subject: "Post created"
    )
  end
end