require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    num_sentences = self.split.count do |string_el|
      string_el.exclamation? || string_el.question? || string_el.sentence?
    end
    num_sentences
  end

  #class end
end