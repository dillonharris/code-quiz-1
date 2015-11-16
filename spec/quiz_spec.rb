require_relative '../quiz'

describe Quiz do
  before do
    @quiz = Quiz.new('questions.csv')
  end

  it 'has an array of questions' do
    expect(@quiz.qua.class).to eq(Array)
  end

  it 'makes answer available' do
    expect(@quiz.qua[0].answer).to eq('Linux')
  end

  it 'makes questions available' do
    expect(@quiz.qua[0].question).to include('Most popular open source')
  end

  it 'loads answers from file' do
    expect(@quiz.qua[0].class).to eq(Quanswer)
    expect(@quiz.qua[1].class).to eq(Quanswer)
  end

  it 'has a current question' do
     expect(@quiz.current_question).to include('Most popular open source')
     @quiz.current_question.shift
     expect(@quiz.current_question).to include('High level programming lan')     
  end
end
