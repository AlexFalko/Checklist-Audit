require 'rails_helper'

RSpec.describe Checklist, type: :model do
  subject {
    described_class.new(title: 'Anything',
                        description: 'Lorem ipsum'
                       )
  }

  describe 'Associations' do
    it { should belong_to(:user).without_validating_presence }
  end

  it 'is valid with valid attributes' do
    expect(subject).to_not be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end
end
