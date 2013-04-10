require 'docx/elements'

module Docx
  module Elements
    module Containers
      module Container
        # Relation methods
        # TODO: Create a properties object, include Element
        def properties
          @node.at_xpath("./#{@properties_tag}")
        end

        def blank!
          @node.xpath(".//w:t").each {|t| t.content = '' }
        end
      end
    end
  end
end