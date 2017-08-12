class QuestionsValidator < ActiveModel::Validator
  def validate(record)
    comitee = Comitee.find(record.comitee_id) if !record.comitee_id.nil?
    if record.answer_1 == "" && comitee.question_1 != ""
      record.errors[:base] << "A 1° pergunta precisa ser respondida."
    end
    if record.answer_2 == "" && comitee.question_2 != ""
      record.errors[:base] << "A 2° pergunta precisa ser respondida."
    end
    if record.answer_3 == "" && comitee.question_3 != ""
      record.errors[:base] << "A 3° pergunta precisa ser respondida."
    end
    if record.answer_4 == "" && comitee.question_4 != ""
      record.errors[:base] << "A 4° pergunta precisa ser respondida."
    end
    if record.answer_5 == "" && comitee.question_5 != ""
      record.errors[:base] << "A 5° pergunta precisa ser respondida."
    end
  end
end
