package visitor.pattern;

public abstract aspect VisitorProtocol{
	public abstract void TreeNode.accept(VisitorProtocol v);
	public void BinaryOperatorNode.accept(VisitorProtocol v){
		v.visit(this);
	}
	public void NumericNode.accept(VisitorProtocol v){
		v.visit(this);
	}
	
	public abstract void visit(BinaryOperatorNode n);
	public abstract void visit(NumericNode n);
	
}