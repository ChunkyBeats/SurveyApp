require('spec_helper')

describe(Survey) do
  describe('#questions') do
    it('returns the questions in a survey') do
      survey = Survey.create({:survey_name => "What SuperHero are you?"})
      q1 = Question.create({:question_desc => "You're attacked, what do you do?", :survey_id => survey.id()})
      expect(survey.questions).to(eq([q1]))
    end
  end
end
