require_relative 'spec_helper'
require 'rdf/spec/repository'

describe RDF::OrderedRepo do
  # @see lib/rdf/spec/repository.rb in rdf-spec
  it_behaves_like 'an RDF::Repository' do
    let(:repository) { described_class.new }
  end

  it { is_expected.not_to be_durable }
  it { is_expected.to be_supports(:rdfstar)}
  it { is_expected.not_to be_supports(:snapshots)}

  it "maintains arbitrary options" do
    repository = described_class.new(foo: :bar)
    expect(repository.options).to have_key(:foo)
    expect(repository.options[:foo]).to eq :bar
  end

end
