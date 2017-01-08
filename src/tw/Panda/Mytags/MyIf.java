package tw.Panda.Mytags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MyIf extends SimpleTagSupport{
	private boolean test;
	
	// Setter method
	public void setTest(boolean test){
		this.test = test;
	}

	@Override
	public void doTag() throws JspException, IOException {
		super.doTag();
		if(test){
			JspFragment jf = getJspBody();
			jf.invoke(null);
		}
	}

}
