# frozen_string_literal: true

RSpec.describe Starburst do
  subject(:starburst) { described_class }

  around do |example|
    # copies original settings
    original_settings = described_class.class_variables.each_with_object({}) do |setting, configuration|
      configuration[setting] = described_class.class_variable_get(setting)
    end

    example.run

    # restores original settings back
    original_settings.each do |setting, value|
      described_class.class_variable_set(setting, value)
    end
  end

  describe '.base_controller' do
    subject(:base_controller) { starburst.base_controller }

    it { is_expected.to eq('::ApplicationController') }
  end

  describe '.base_controller=' do
    subject(:set_base_controller) { starburst.base_controller = new_base_controller }

    let(:new_base_controller) { 'CustomController' }

    it { expect { set_base_controller }.to change(starburst, :base_controller).to new_base_controller }
  end

  describe '.current_user_method' do
    subject(:current_user_method) { starburst.current_user_method }

    it { is_expected.to eq(:current_user) }
  end

  describe '.current_user_method=' do
    subject(:set_current_user_method) { starburst.current_user_method = new_current_user_method }

    let(:new_current_user_method) { :other_method }

    it { expect { set_current_user_method }.to change(starburst, :current_user_method).to new_current_user_method }
  end

  describe '.user_instance_methods' do
    subject(:user_instance_methods) { starburst.user_instance_methods }

    it { is_expected.to eq([]) }
  end

  describe '.user_instance_methods=' do
    subject(:set_user_instance_methods) { starburst.user_instance_methods = new_user_instance_methods }

    let(:new_user_instance_methods) { %i[active?] }

    it { expect { set_user_instance_methods }.to change(starburst, :user_instance_methods).to new_user_instance_methods }
  end

  describe '.configuration' do
    subject(:configuration) { starburst.configuration(&settings) }

    let(:new_base_controller) { 'CustomController' }
    let(:new_current_user_method) { :other_method }
    let(:new_user_instance_methods) { %i[active?] }
    let(:settings) do
      lambda do |config|
        config.base_controller = new_base_controller
        config.current_user_method = new_current_user_method
        config.user_instance_methods = new_user_instance_methods
      end
    end

    it 'updates Starburst settings' do
      expect { configuration }.to change(starburst, :base_controller).to(new_base_controller)
        .and(change(starburst, :current_user_method).to(new_current_user_method))
        .and(change(starburst, :user_instance_methods).to(new_user_instance_methods))
    end
  end
end
