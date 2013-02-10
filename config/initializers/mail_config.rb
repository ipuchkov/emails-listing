Mail.defaults do
  retriever_method :pop3, :address    => "pop.gmail.com",
                   :port       => 995,
                   :user_name  => '<your_account>',
                   :password   => '<your_pass>',
                   :enable_ssl => true
end
