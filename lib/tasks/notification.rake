namespace :notification do
    desc '利用者にメールする'

    task send_emails_from_admin: :enviroment do
        puts '初めてのRake task'
    end
end