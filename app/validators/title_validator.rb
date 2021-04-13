class TitleValidator < ActiveModel::Validator
    
    CONSTANT = ["Won't Believe", "Secret", "Top [number]", "Guess"]
    
    def validate(record)
      unless record.title.include?(CONSTANT)
        record.errors[:title] << "We're only allowed to have people who work for the company in the database!"
      end
    end
end 