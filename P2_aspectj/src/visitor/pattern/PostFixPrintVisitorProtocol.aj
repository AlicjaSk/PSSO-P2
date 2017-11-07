package visitor.pattern;

public aspect PostFixPrintVisitorProtocol extends VisitorProtocol {

	@Override
	public void visit(BinaryOperatorNode node)  {
	    //print out left subtree
	    if (node.getLeft() != null) node.getLeft().accept(this);
	    //print out right subtree
	    if (node.getRight() != null) node.getRight().accept(this);
	    //print out this node
	    System.out.print(node.getLabel());
	            
	  }

	@Override
	  public void visit(NumericNode node)  {
	    System.out.print(node.getLabel());
	  }

}
