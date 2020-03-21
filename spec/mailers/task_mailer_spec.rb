require "rails_helper"

describe PostMailer , type: :mailer do
 let(:post){ FactroyBot.create(:post,title:'もくもく会',place:'渋谷区',)}
end

