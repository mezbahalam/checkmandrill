class CommentMailer < ActionMailer::Base

  def comment_created(current_user, post_user, content)

    @current_user = current_user
    @post_user = post_user
    @content = content

    mail(
        to: user.email,
        from: "email@example.com",
        subject: "comment created",
        body: "this is comment mailer"
    )
  end

end