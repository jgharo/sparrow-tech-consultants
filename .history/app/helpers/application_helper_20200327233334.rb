module ApplicationHelper
    def num_to_phone(phone_number, opts={})
        opts = {area_code: true}.merge(opts)
        number_to_phone(phone_number, opts)
      end
end
