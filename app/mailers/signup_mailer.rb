class SignupMailer < ActionMailer::Base
		  default :from => 'miltonquirino.br@gmail.com'
		  def confirm_email(user)
					 @user = user
					 @confirmation_link = root_url # Mudaremos no futuro
					 mail({
								:to => user.email,
								:bcc => ['sign ups <miltonquirino.br@gmail.com>'],
								:subject => I18n.t('signup_mailer.confirm_email.subject')
					 })
		  end
end
