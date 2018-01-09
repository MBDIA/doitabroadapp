require 'rufus/scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '10m' do
  Suggestion.all.each do |suggestion|
    if suggestion.status == "unotified"
      my_token = ENV['POSTMARK_API_KEY']
      client = Postmark::ApiClient.new(my_token)
      client.deliver_with_template(from: 'info@do-it-abroad.com',
                               to: "#{suggestion.user.email}",
                               template_id: 3423903,
                               template_model: {
                                 name: "#{suggestion.user.first_name}",
                               })
      suggestion.status = "notified"
      suggestion.save
      suggestion.user.reservation.tracking_status = "suggestion"
      suggestion.user.reservation.save
    end
  end
end
