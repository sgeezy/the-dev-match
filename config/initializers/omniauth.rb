Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :developer unless Rails.env.production?
#   provider :twitter, '30501728-mPi11bmyVOIHsHDzdzDLvvPgcx1Vn4QDUHmURnkq0', 'kEITsA0SH0VratuTY1tU98RopGKTNrFErkJEGgymtagPT'
  provider :twitter, 'hCMwrMjtzwjLKT0uWLUMQah9e', 'by56TM6cyRUZkiGVjIgPjYiA4CUBkabVzxDaYkrlOjyw0cRSNK'
end