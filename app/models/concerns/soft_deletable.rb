module SoftDeletable
  def self.included(klass)
    klass.class_eval do
      scope :not_deleted, -> { where(deleted_at: nil) }
      scope :deleted, -> { unscoped.where.not(deleted_at: nil) }
      define_callbacks :soft_delete
    end
    klass.extend(ClassMethods)
  end

  module ClassMethods
    def with_deleted
      unscope(where: :deleted_at)
    end
  end

  def soft_delete
    run_callbacks(:soft_delete) { touch(:deleted_at) }
  end
end
