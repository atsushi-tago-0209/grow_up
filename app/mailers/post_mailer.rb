class PostMailer < ApplicationMailer

  def creation_email(post)
    @post = post
    mail(
      subject: 'イベント作成完了メール',
      to: 'user@example.com',
      from: 'postleaf@example.com'
    )
  end
end
