package visitor.pattern;

public aspect PreFixPrintVisitorProtocol extends VisitorProtocol {

	@Override
	  public void visit(BinaryOperatorNode node)  {
	    //print out this node
	    System.out.print(node.getLabel());
	    //print out left subtree
	    if (node.getLeft() != null) node.getLeft().accept(this);
	    //print out right subtree
	    if (node.getRight() != null) node.getRight().accept(this);   
	  }

	@Override
	  public void visit(NumericNode node)  {
	    System.out.print(node.getLabel());
	  }

}
