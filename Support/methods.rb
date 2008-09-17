#!/usr/bin/env ruby

require 'rexml/document'
include REXML
file = File.open '/Users/jchaffer/Library/Application Support/TextMate/Bundles/JQuery.tmbundle/Support/jquery-docs-xml.xml'

doc = Document.new(file)
root = doc.root
methods = []
root.each_element('//method') { |e|
  methods.push(e.elements['@name'].to_s)
}
methods.uniq!.sort!
print methods.join('|')
