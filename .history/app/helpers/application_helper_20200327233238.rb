module ApplicationHelper
    def formatted_phone(number, options={area_code: true})
        number_to_phone(number, options)
      end
end
