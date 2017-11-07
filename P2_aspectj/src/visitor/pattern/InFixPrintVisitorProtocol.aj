package visitor.pattern;

public aspect InFixPrintVisitorProtocol extends VisitorProtocol {


	@Override
	  public void visit(BinaryOperatorNode node)  {
	    //print out left subtree
	    System.out.print("(");
	    if (node.getLeft() != null) node.getLeft().accept(this);
	    //print out this node
	    System.out.print(" " + node.getLabel() + " ");
	    //print out right subtree
	    if (node.getRight() != null) node.getRight().accept(this);
	    System.out.print(")");
	  }

	@Override
	  public void visit(NumericNode node)  {
	    System.out.print(node.getLabel());
	  }
	}


