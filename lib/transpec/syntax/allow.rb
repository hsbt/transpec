# coding: utf-8

require 'transpec/syntax'
require 'transpec/syntax/mixin/expect_base'

module Transpec
  class Syntax
    class Allow < Syntax
      include Mixin::ExpectBase

      def self.target_method?(receiver_node, method_name)
        receiver_node.nil? && [:allow, :allow_any_instance_of].include?(method_name)
      end

      def method_name_for_instance
        :allow
      end

      def any_instance?
        method_name == :allow_any_instance_of
      end
    end
  end
end
