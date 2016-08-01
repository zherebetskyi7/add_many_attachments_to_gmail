require 'gmail'
require 'mail'

Gmail.new('your_gmail', 'password') do |gmail|
  gmail.deliver do
  to "recipient_mail"
  subject "theme name"
  text_part do
    body "I add many attachments"
  end
  Dir.glob('attachments/*.png') do |file|
    add_file file
  end
end
end
