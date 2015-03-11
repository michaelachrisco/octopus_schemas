require 'spec_helper'

describe OctopusSchemas do
  subject(:octopus_schemas) { OctopusSchemas.new('shards/shards.yml') }
  it 'has a version number' do
    expect(OctopusSchemas::VERSION).not_to be nil
  end

  describe '.connect' do
    subject { octopus_schemas.connect(database) }

    it { is_expected.to be ActiveRecord::Base}
    it { is_expected.to be '' }
  end

end
