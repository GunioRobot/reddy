require 'lib/rdfxmlparser'
describe "RDF/XML Parser" do
  it "should be able to detect whether an XML file is indeed an RDF file" do
    bad_doc = "<?xml version=\"1.0\"?><RDF><foo /></RDF>"
    bad_graph = RdfXmlParser.new(bad_doc)
    bad_graph.is_rdf?.should == false
    
    good_doc = "<?xml version=\"1.0\"?><rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"></rdf:RDF>"
    good_graph = RdfXmlParser.new(good_doc)
    good_graph.is_rdf?.should == true
  end

  it "should conform to the striping pattern" do
    pending
  end
end