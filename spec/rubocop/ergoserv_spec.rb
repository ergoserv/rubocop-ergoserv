RSpec.describe Rubocop::Ergoserv do
  it 'has a version number' do
    expect(Rubocop::Ergoserv::VERSION).not_to be nil
  end

  describe 'rubocop config' do
    let(:stubbed_env) { create_stubbed_env }

    it 'runs successfully' do
      _stdout, _stderr, status = stubbed_env.execute(
        'bundle exec rubocop -c config/default.yml'
      )
      expect(status.exitstatus).to eq 0
    end
  end
end
