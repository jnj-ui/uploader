class BlogMailer < ApplicationMailer
  def blog_mail(blog)
    @blog = blog
    mail to: User.find_by(id: blog.user_id).email, subject: "ブログ投稿の確認メール"
  end
end
