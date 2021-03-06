package Recursion;

import java.awt.Point;
import java.awt.Polygon;
import java.util.Scanner;

public class Fractals extends EasyGui {
	private static final int SIZE = 256;

	// orientations needed by some fractals
	private final int SOUTH = 0;
	private final int WEST = 1;
	private final int NORTH = 2;
	private final int EAST = 3;
	private final int NONE = 4;

	/*
	 * If you add more fractal methods, add a stub here so you can run them from
	 * the menu
	 */
	public Fractals() {
		super("Fractals");
		String[] fractals = { "Sierpinski", "Jurassic", "Plusses", "Koch",
				"Grid" };
		makeMenu(fractals);
	}

	/*
	 * If you add more fractal methods, add a stub here so you can run them from
	 * the menu
	 */
	public void run(String fractal) {
		if (fractal.equals("Sierpinski"))
			runSierpinski();
		else if (fractal.equals("Jurassic"))
			runJurassic();
		else if (fractal.equals("Plusses"))
			runPlusses();
		else if (fractal.equals("Koch"))
			runKoch();
		else if (fractal.equals("Grid"))
			testGrid();
		else
			System.exit(1);
	}

	/**
	 * What are the axis on the grid drawn by the gui? Run this method to find
	 * out.
	 */
	public void testGrid() {
		clearWindow();

		System.out.println("Is the grid a standard x,y plane?");
		Point p = new Point(getWidth() / 2, getHeight() / 2); // center
		Point n = new Point(p.x, p.y - 40); // N
		Point w = new Point(p.x - 40, p.y); // W
		Point s = new Point(p.x, p.y + 40); // S
		Point e = new Point(p.x + 40, p.y); // E
		Scanner console = new Scanner(System.in);
		System.out.print("Drawing toward -x: (x,y)...(x-40,y) (hit return)");
		drawLine(p, w);
		console.nextLine();

		System.out.print("Drawing toward -y: (x,y)...(x,y-40) (hit return)");
		drawLine(p, n);
		console.nextLine();

		System.out.print("Drawing toward +x: (x,y)...(x+40,y) (hit return)");
		drawLine(p, e);
		console.nextLine();

		System.out.println("Drawing toward +y: (x,y)...(x,y+40)");
		drawLine(p, s);

		System.out
				.println("Notice: x-40 was west (left) and x+40 was east (right)");
		System.out.println("The X axis runs 0---------------->");
		System.out
				.println("Notice: y-40 was north (up) and y+40 was south (down)");
		System.out.println("The X axis runs up/dpwn but 0 is on top (UNUSUAL)");
		System.out.println("Java sees the GUI as             X    ");
		System.out.println("                               0 1 2   ");
		System.out.println("                              |--------");
		System.out.println("                             0|        ");
		System.out.println("                           Y 1|        ");
		System.out.println("                             2|        ");

		System.out
				.println("\n\nTake away lesson: Just because Math uses a standard x,y plane,"
						+ "don't assume Java does");

	}

	/**
	 * Sierpinski Fractal (finished)
	 * <P>
	 * Draws a Sierpinski gasket to the given level of triangles. A triangle is
	 * a set of points: (p1, p2, p3).
	 * <P>
	 * In the Sierpinski gasket, each triangle has another triangle in each of
	 * its 3 corners. The 3 subtriangles and the unused space in the middle are
	 * all the same size.
	 * <P>
	 * Here is a level 2 triangle:
	 * 
	 * <PRE>
	 *                            /\
	 *                           /  \
	 *                          /----\
	 *                         / \  / \
	 *                        /---\/---\
	 *                       / \      / \
	 *                      /---\    /---\
	 *                     /\  / \  / \  /\
	 *                    /--\/---\/---\/--\
	 * </PRE>
	 */
	public void runSierpinski() {
		Scanner console = new Scanner(System.in);
		System.out.print("What level Sierpinski gasket do you want? ");
		int level = console.nextInt();
		clearWindow();

		// Get points for an equilateral triangle // in the approx middle of the
		// screen
		int height = (int) Math.round(SIZE * Math.sqrt(3.0));
		Point p1 = new Point(0 + getWidth() / 4 - 20, height + getHeight() / 4);
		Point p2 = new Point(SIZE + getWidth() / 4 - 20, 0 + getHeight() / 4);
		Point p3 = new Point(SIZE * 2 + getWidth() / 4 - 20, height
				+ getHeight() / 4);

		drawSierpinski(level, p1, p2, p3);
	}

	/**
	 * Recursive method to draw one level of the Sierpinski gasket.
	 * <P>
	 * The math formula:
	 * 
	 * <PRE>
	 * Sierpinski(0, triangle) = draw the triangle
	 * Sierpinski(n, triangle) = draw the triangle
	 *                           Sierpinski(n-1, triangle1), 
	 *                           Sierpinski(n-1, triangle2), 
	 *                           Sierpinski(n-1, triangle3)
	 * </PRE>
	 * 
	 * Since the subtriangles inside each triangle draw over the lines of the
	 * original triangle, we can actually skip the drawing step in the recursive
	 * case.
	 * <P>
	 * How to find subtriangles in triangle (p1, p2, p3):
	 * 
	 * <PRE>
	 *      BEFORE                 AFTER
	 *         p1                    p1
	 *        /  \                  /  \
	 *       /    \                / A  \
	 *      /      \           p4 /------\ p6
	 *     /        \            / \    / \
	 *    /          \          / B \  / C \
	 * p2 ------------ p3    p2 ---- \/----- p3
	 *                               p5
	 * </PRE>
	 * 
	 */
	public void drawSierpinski(int level, Point p1, Point p2, Point p3) {
		// Base case: Sierpinski(0, triangle)
		if (level == 0) {
			// draw the triangle
			Polygon p = new Polygon();
			p.addPoint(p1.x, p1.y);
			p.addPoint(p2.x, p2.y);
			p.addPoint(p3.x, p3.y);
			drawPolygon(p);
		}

		// recursive case: Sierpinski(n, triangle)
		else {

			// Skipping steps to draw this triangle

			// Find three midpoints in order to find the subtriangles
			Point p4 = midpoint(p1, p2);
			Point p5 = midpoint(p2, p3);
			Point p6 = midpoint(p1, p3);

			// recurse on 3 inner triangles A, B, and C
			drawSierpinski(level - 1, p1, p4, p6);
			drawSierpinski(level - 1, p4, p2, p5);
			drawSierpinski(level - 1, p6, p5, p3);
		}
	}

	// returns the midpoint of Points p1 and p2
	public Point midpoint(Point p1, Point p2) {
		return new Point((p1.x + p2.x) / 2, (p1.y + p2.y) / 2);
	}

	/**
	 * Plusses fractal (recursive cases left as an in-class exercise
	 * 
	 * <P>
	 * Draws a plusses fractal to the given level of plussess. A plus is a set
	 * of points: (p1, p2, p3, p4) designating the end of the plus arms.
	 * 
	 * <PRE>
	 *                    p1
	 *                    |
	 *             p2-----|-----P4
	 *                    |
	 *                    p3
	 * </PRE>
	 * <P>
	 * In the Plusses fractal, each plus arm has another plus on it. This means
	 * that all 4 arms of the first plus have sub plusses but the remaining
	 * plusses only grow new ones on the outer 3 arms.
	 * <P>
	 * Here is a level 3 plus:
	 * 
	 * <PRE>
	 *                               |
	 *                           ----|----
	 *                               |
	 *                          |    |    |
	 *                      ----|----|----|----
	 *                          |    |    | 
	 *                    |          |            |
	 *                ----|----      |        ----|----
	 *             |      |          |            |      |
	 *         ----|------|----------|------------|------|----
	 *             |      |          |            |      |
	 *                ----|----      |        ----|----
	 *                    |          |            |
	 *                          |    |    |
	 *                      ----|----|----|----
	 *                          |    |    |
	 *                               |
	 *                           ----|----
	 *                               |
	 * </PRE>
	 * 
	 * We'll use an orientation on each plus (NONE, NORTH, SOUTH, EAST, WEST) to
	 * indicate which type it is.
	 */
	void runPlusses() {
		Scanner console = new Scanner(System.in);
		System.out.print("What level Plusses fractal do you want? ");
		int level = console.nextInt();
		clearWindow();

		// Get end points for a plus in the approx middle of the screen
		int len = (int) Math.round(SIZE * Math.sqrt(3.0));
		Point p1 = new Point(getWidth() / 2 - len / 2, getHeight() / 2);
		Point p2 = new Point(getWidth() / 2, getHeight() / 2 - len / 2);
		Point p3 = new Point(getWidth() / 2 + len / 2, getHeight() / 2);
		Point p4 = new Point(getWidth() / 2, getHeight() / 2 + len / 2);
		drawPlusses(level, NONE, p1, p2, p3, p4);
	}

	/**
	 * Recursive method to draw one level of the Plusses fractal.
	 * <P>
	 * The math formula:
	 * 
	 * <PRE>
	 * Plusses(0, ANY, points) = draw the plus
	 * Plusses(n, NONE, points) = draw the plus
	 *                      Plusses(n-1, NORTH, subpoints), 
	 *                      Plusses(n-1, SOUTH, subpoints), 
	 *                      Plusses(n-1, WEST, subpoints), 
	 *                      Plusses(n-1, EAST, subpoints)
	 * Plusses(n, SOUTH, points) = draw the plus
	 *                      Plusses(n-1, SOUTH, subpoints), 
	 *                      Plusses(n-1, WEST, subpoints), 
	 *                      Plusses(n-1, EAST, subpoints)
	 * etc..
	 * </PRE>
	 * 
	 * In all cases, you draw the plus. These don't overlap so you do have to
	 * draw them all. The first call has no orientation so it makes 4 recursive
	 * calls. The rest of the calls make 3 recursive calls.
	 * <P>
	 * How to find subplusses in a plus(p1, p2, p3, p4)
	 * 
	 * <PRE>
	 *                 BEFORE                               AFTER
	 *                   p2                                   p2
	 *                   |                                    |
	 *                   |                                    |
	 *                   |                             p2a----|----p2b
	 *                   |                           p1a      |      p3a
	 *                   |                            |       |       |           
	 *    p1 ------------|------------ p3      p1 ----|---------------|---- p3
	 *                   |                            |       |       |
	 *                   |                           p1b      |      p3b
	 *                   |                             p4a----|----p4b
	 *                   |                                    |
	 *                   |                                    |
	 *                   p4                                   p4
	 * </PRE>
	 * 
	 * Each new arm is half the length of the old arm. You may want to use the
	 * midpoint method.
	 */
	void drawPlusses(int level, int orientation, Point p1, Point p2, Point p3,
			Point p4) {

		// Draw the plus with short bars so they don't hit other plusses
		drawLine(p1.x + 10, p1.y, p3.x - 10, p3.y);
		drawLine(p2.x, p2.y + 10, p4.x, p4.y - 10);

		// base case: no work
		if (level == 0) {
			// no code goes here
		}

		// recursive case
		else {
			Point p5 = midpoint(p1, p3);
			Point p1a = midpoint(p1, p2);
			Point p1b = midpoint(p1, p4);
			Point p2a = p1a;
			Point p2b = midpoint(p2, p3);
			Point p3a = p2b;
			Point p3b = midpoint(p3, p4);
			Point p4a = p1b;
			Point p4b = p3b;

			if (orientation == NONE) {
				drawPlusses(level - 1, NORTH, p2a, p2, p2b, p5);
				drawPlusses(level - 1, EAST, p5, p3a, p3, p3b);
				drawPlusses(level - 1, SOUTH, p4a, p5, p4b, p4);
				drawPlusses(level - 1, WEST, p1, p1a, p5, p1b);
			} else if (orientation == NORTH) {
				drawPlusses(level - 1, NORTH, p2a, p2, p2b, p5);
				drawPlusses(level - 1, EAST, p5, p3a, p3, p3b);
				drawPlusses(level - 1, WEST, p1, p1a, p5, p1b);
			} else if (orientation == EAST) {
				drawPlusses(level - 1, NORTH, p2a, p2, p2b, p5);
				drawPlusses(level - 1, EAST, p5, p3a, p3, p3b);
				drawPlusses(level - 1, SOUTH, p4a, p5, p4b, p4);
			} else if (orientation == SOUTH) {
				drawPlusses(level - 1, EAST, p5, p3a, p3, p3b);
				drawPlusses(level - 1, SOUTH, p4a, p5, p4b, p4);
				drawPlusses(level - 1, WEST, p1, p1a, p5, p1b);
			} else if (orientation == WEST) {
				drawPlusses(level - 1, NORTH, p2a, p2, p2b, p5);
				drawPlusses(level - 1, SOUTH, p4a, p5, p4b, p4);
				drawPlusses(level - 1, WEST, p1, p1a, p5, p1b);
			}
		}
	}

	/**
	 * Jurassic Fractal (entire recursive method left as a class exercise).
	 * <P>
	 * This is the one that looks like a dragon, frequently seen behind the
	 * Greatful Dead teddy bears.
	 * <P>
	 * Encoded with 90 degree turns to the left and right Rules: <BR>
	 * Jurassic(level 0) = the first line goes down <BR>
	 * Jurassic(level n) = Jurassic(level n-1) + R + Jurassic(opposite of mirror
	 * image of level n-1)
	 * <P>
	 * level 1 is R <BR>
	 * level 2 is R R L <BR>
	 * level 3 is RRL R RLL <BR>
	 * level 4 is RRLRRLL R RRLLRLL and so on...
	 * <P>
	 * We'll need orientations to know which way left and right are from our
	 * current line. The mirror imaging means we'll need to save the pattern.
	 * Since the pattern is made of Left and Right turns, we can save it as a
	 * string full of L and R.
	 * 
	 */
	void runJurassic() {
		Scanner console = new Scanner(System.in);
		System.out.print("What level Jurassic fractal do you want? ");
		int level = console.nextInt();
		clearWindow();

		// Get a starting point for our fractal.
		int len = 100 / (level + 1); // line length so it fits on the screen
		Point p = new Point(getWidth() / 2, getHeight() / 2); // center point
		// The starting orientation is NONE
		// The starting level is 0
		drawJurassic(); // You edit this line
	}

	/**
	 * Recursive method to draw a Jurassic fractal
	 * 
	 */
	void drawJurassic() {
		// You edit this method
	}

	/**
	 * Extra Credit
	 * <P>
	 * Get Jurassic fractal finished. Test it on levels 3, 9, and 11. Take
	 * screen shots. Turn in the code and the screen shots in your EC folder in
	 * the SVN repository. (Type <I>xv &</I> at a terminal to get a picture
	 * program which can take screen shots. I'm happy to help you with it).
	 */

	/**
	 * An Extra Credit (This can be gotten multiple times).
	 * <P>
	 * Using my EasyGui setup, find another fractal online and get it running.
	 * You must have:
	 * <OL>
	 * <LI>working Java code that runs like mine do.
	 * <LI>It must use my EasyGui methods. You can add more draw methods if
	 * needed.
	 * <LI>It must take in a level and draw the fractal to that level.
	 * <LI>It must use recursion.
	 * <LI>Your comments must explain the math
	 * <LI>Edit the Fractals constructor and run method to include your fractal.
	 * </OL>
	 * <P>
	 * You can use any sources you find except answers from your classmates.
	 * (This means the web and math/code on it is fair game).
	 * <P>
	 * Turn in the code in your EC folder in the SVN repository.
	 */

	/**
	 * An Easy Extra Credit
	 * <P>
	 * Convert the orientations to an enum instead of constants. This is
	 * appropriate since they really do not need values. You'll also have to
	 * convert all code that uses them in this file.
	 * <P>
	 * Turn in the code in your EC folder in the SVN repository.
	 */

	/**
	 * Another Extra Credit.
	 * <P>
	 * Modify one of the fractals to colorize it in a meaningfull pattern. You
	 * can find examples of this coloration on the web.
	 * <P>
	 * Turn in the code in your EC folder in the SVN repository.
	 */

	/**
	 * Koch Fractal
	 * 
	 * This fractal does not currently work! Extra Credit! It needs some algebra
	 * work. The problem lines are labeled. Dust off that algebra book and get
	 * it running. Treat it like a lab and commit it to SVN then email me to let
	 * me know you handed it in.
	 * 
	 * This fractal, also known as the Koch island or Koch Snowflake, was first
	 * described by Helge von Koch in 1904. It is built by starting with an
	 * equilateral triangle, removing the inner third of each side, building
	 * another equilateral triangle at the location where the side was removed,
	 * and then repeating the process indefinitely.
	 * 
	 * To implement it: given a line of the triangle p1 to p2 If level is less
	 * that 1, draw it. Otherwise, find the third points p4 and p5 find the p4
	 * p5 p6 triangle in the middle third use the triangle midpoint to find the
	 * p6 on the outside recurse on p1,p4 and p4,p6 and p6,p5 and p5,p1
	 * <P>
	 * Turn in the code in your EC folder in the SVN repository.
	 */
	void runKoch() {
		Scanner console = new Scanner(System.in);
		System.out.print("What level Koch fractal do you want? ");
		int level = console.nextInt();
		clearWindow();
		Point p = new Point(50, 50);

		int height = (int) Math.round(SIZE * Math.sqrt(3.0));
		Point p1 = new Point(0 + getWidth() / 4 - 20, height + getHeight() / 4);
		Point p2 = new Point(SIZE + getWidth() / 4 - 20, 0 + getHeight() / 4);
		Point p3 = new Point(SIZE * 2 + getWidth() / 4 - 20, height
				+ getHeight() / 4);

		// Note: How do we find the midpoint of an equilateral triangle?
		Point mid = new Point(1, 1); // mid point of triangle FIX THIS LINE

		drawKoch(level, p1, p2, mid);
		drawKoch(level, p2, p3, mid);
		drawKoch(level, p3, p1, mid);
	}

	/*
	 
	 */
	void drawKoch(int level, Point p1, Point p2, Point mid) {
		if (level < 1) {
			drawLine(p1, p2);
		} else {
			Point p4 = firstthird(p1, p2); // FIX THIS METHOD
			Point p5 = secondthird(p1, p2); // FIX THIS METHOD

			// FIX THESE LINES
			Point p6 = new Point(1, 1); // 3rd point of equilateral triangle
			// p4,p5,p6
			Point mid2 = new Point(1, 1); // mid point of p4,p5,p6 triangle

			drawKoch(level - 1, p1, p4, mid);
			drawKoch(level - 1, p4, p6, mid2);
			drawKoch(level - 1, p6, p5, mid2);
			drawKoch(level - 1, p5, p2, mid);
		}
	}

	/**
	 * Finds the point one third of the way along the line.
	 * 
	 * @param p1
	 *            The first point
	 * @param p2
	 *            The second point
	 * @return the point one third of the way along the line from p1 to p2
	 * 
	 *         FIX THIS METHOD
	 */
	public Point firstthird(Point p1, Point p2) {
		return new Point(1, 1);
	}

	/**
	 * Finds the point two thirds of the way along the line.
	 * 
	 * @param p1
	 *            The first point
	 * @param p2
	 *            The second point
	 * @return the point two thirds of the way along the line from p1 to p2
	 * 
	 *         FIX THIS METHOD
	 */
	public Point secondthird(Point p1, Point p2) {
		return new Point(1, 1);
	}

	public static void main(String[] args) {
		Fractals f = new Fractals();
	}
}
