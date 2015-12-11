require "org-ruby"
module Jekyll
  class OrgConverter < Converter
    safe true
    priority :low

    def matches(ext)
      ext =~ /^\.org$/i
    end

    def output_ext(ext)
      ".html"
    end

    def convert(content)
      new_content = content
      
      parser = Orgmode::Parser.new(new_content)
      parser.to_html
    end
  end
end
