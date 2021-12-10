require "language_pack"
require "language_pack/ruby"

class LanguagePack::NoNextLockfile < LanguagePack::Ruby
  def self.use?
    !File.exists?("Gemfile_next.lock")
  end

  def name
    "Ruby/NoNextLockfile"
  end

  def compile
    error "Gemfile_next.lock required. Please check it in."
  end
end
