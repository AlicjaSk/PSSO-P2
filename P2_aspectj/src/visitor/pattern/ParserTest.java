
package visitor.pattern;


class ParserTest{
	public static void main(String[] args)  {
	    Parser parser = new Parser("1 + ( 2 - 3 * 4 ) % 5"); // spaces are vital!!	    
	    TreeNode node = parser.parse();

            node.accept(new InFixPrintVisitorProtocol());
            System.out.println();
            node.accept(new PreFixPrintVisitorProtocol());
            System.out.println();
            node.accept(new PostFixPrintVisitorProtocol());
            System.out.println();
            
            EvaluateVisitorProtocol v = new EvaluateVisitorProtocol();
	    node.accept(v);            
	    System.out.println("result: " + v.getValue());
            
           
	  }
	
}