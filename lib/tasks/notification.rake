namespace :notification do
desc '利用者にメールする'

    task :send_emails_from_admin, ['msg'] => :environment do |task, args|
        msg = args['msg']
        if msg.present?
            NotificationFromAdminJob.perform_later(msg)
        else
          puts '送信できませんでした。メッセージを入力してください。ex, rails notification:send_email_from_admin\[こんにちは\]'
        end
        # NotificationFromAdminJob.perform_later('rake task test')
    end
end