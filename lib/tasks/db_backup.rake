
desc "Backups database of the application running in linux machine"
task :backup => :environment do
	system("sh db/backup.sh")
end

desc "Cron Job to update the changes in the cron job scheduling -- should run after every deployment to get job change"
task :cron_job => :environment do
	if system("whenever --update-crontab ghmmap")
	 puts "Cron Job update successful"
	else
	 puts "Cron Job update unsuccessful"	
	end
end