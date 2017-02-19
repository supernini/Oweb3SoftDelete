module Oweb3SoftDelete
  module ActiveRecord
    def self.included(base)
    end

    def oweb3_delete!
      self.update(soft_deleted: DateTime.now)
    end

    def oweb3_undelete!
      self.update(soft_deleted: nil)
    end
  end
end

ActiveSupport.on_load(:active_record) do
  ActiveRecord::Base.send :include, Oweb3SoftDelete::ActiveRecord
  def self.acts_as_soft_delete(options={})
    default_scope {where({soft_deleted: nil})}
  end

  def self.oweb3_deleted
    self.unscoped
  end
end
