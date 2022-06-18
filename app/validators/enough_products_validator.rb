class EnoughProductsValidator < ActiveModel::Validator
    def validate(record)
        record.placements.each do |placement|
            if placement.quantity > product.quantity
                record.errors.add product.title, "Is out of stock, just #{product.quantity} left"
            end
        end
    end
end