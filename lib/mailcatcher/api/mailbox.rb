module MailCatcher
  module API
    class Mailbox
      autoload :Message,           'mailcatcher/api/mailbox/message'
      autoload :MessageCollection, 'mailcatcher/api/mailbox/message_collection'

      def count
        messages.count
      end

      def messages(reload: false)
        @collection = nil if reload == true
        @collection ||= MessageCollection.new
      end
    end
  end
end
