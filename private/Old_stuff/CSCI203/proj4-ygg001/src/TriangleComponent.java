import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.geom.Line2D;
import java.text.DecimalFormat;

import javax.swing.JComponent;

/**
 * CSCI 203, Yifan Ge
 * Oct 9, 2010, 3:40:45 PM
 */

/**
 * This class draws the triangle object and displays its information.
 * 
 * @author Ge
 * 
 */
@SuppressWarnings("serial")
public class TriangleComponent extends JComponent {

	// instance fields
	private Triangle triangle;

	/**
	 * Constructs a TriangleComponent object
	 * 
	 * @param triangle
	 *            the Triangle object
	 */
	public TriangleComponent(Triangle triangle) {
		this.triangle = triangle;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.swing.JComponent#paintComponent(java.awt.Graphics)
	 */
	public void paintComponent(Graphics canvas) {
		Graphics2D canvas2D = (Graphics2D) canvas;
		Line2D.Double a = new Line2D.Double(triangle.getP1(), triangle.getP2());
		Line2D.Double b = new Line2D.Double(triangle.getP2(), triangle.getP3());
		Line2D.Double c = new Line2D.Double(triangle.getP3(), triangle.getP1());

		// draws the triangle

		canvas2D.draw(a);
		canvas2D.draw(b);
		canvas2D.draw(c);

		// rounds the number
		DecimalFormat formatting = new DecimalFormat("######.00");

		// displays the information of the triangle

		int letterHeight = 15;
		int semiLetterHeight = letterHeight / 2;
		int stringY = this.getHeight() - semiLetterHeight;
		int stringX = 5;
		double angle3 = triangle.getAngleP3();
		canvas2D.drawString("Angle 3: " + formatting.format(angle3), stringX, stringY);

		stringY -= letterHeight;
		double angle2 = triangle.getAngleP2();
		canvas2D.drawString("Angle 2: " + formatting.format(angle2), stringX, stringY);

		stringY -= letterHeight;
		double angle1 = triangle.getAngleP1();
		canvas2D.drawString("Angle 1: " + formatting.format(angle1), stringX, stringY);

		stringY -= letterHeight;
		canvas2D.drawString("Area: " + formatting.format(triangle.getArea()), stringX,
				stringY);

		stringY -= letterHeight;
		canvas2D.drawString("Perimeter: " + formatting.format(triangle.getPerimeter()),
				stringX, stringY);

		stringY -= letterHeight;
		canvas2D.drawString("Side c: " + formatting.format(triangle.getSideLengthC()),
				stringX, stringY);

		stringY -= letterHeight;
		canvas2D.drawString("Side b: " + formatting.format(triangle.getSideLengthB()),
				stringX, stringY);

		stringY -= letterHeight;
		canvas2D.drawString("Side a: " + formatting.format(triangle.getSideLengthA()),
				stringX, stringY);

	}
}
