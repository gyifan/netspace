import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;

/**
 * CSCI 203, Section 1, Yifan Ge
 * Sep 16, 2010, 1:58:02 AM
 */

/**
 * @author GALEN
 * 
 */
public class MyCalendar {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		// print the date of my birthday

		GregorianCalendar today = new GregorianCalendar();
		System.out.println("Today is " + (today.get(Calendar.MONTH) + 1) + "/"
				+ today.get(Calendar.DAY_OF_MONTH) + "/"
				+ today.get(Calendar.YEAR));

		// print the weekday of my birthday

		GregorianCalendar myBirthday = new GregorianCalendar(1990,
				Calendar.JANUARY, 15);
		String dayOfBirthday = myBirthday.getDisplayName(Calendar.DAY_OF_WEEK,
				Calendar.LONG, Locale.ENGLISH);
		System.out.println("The weekday of my birthday is " + dayOfBirthday
				+ ".");

		// print the date of ten thousand days after my birthday

		GregorianCalendar tenThousandDaysAfterMyBirthday;
		myBirthday.add(Calendar.DAY_OF_MONTH, 10000);
		tenThousandDaysAfterMyBirthday = myBirthday;
		System.out.println("10,000 days from my birthday is "
				+ (tenThousandDaysAfterMyBirthday.get(Calendar.MONTH) + 1)
				+ "/"
				+ tenThousandDaysAfterMyBirthday.get(Calendar.DAY_OF_MONTH)
				+ "/" + tenThousandDaysAfterMyBirthday.get(Calendar.YEAR));

		// print October 4, 1582 - date and weekday

		GregorianCalendar theDate = new GregorianCalendar(1582,
				Calendar.OCTOBER, 4);
		System.out.println("The date of October 4, 1582 is "
				+ (theDate.get(Calendar.MONTH) + 1) + "/"
				+ theDate.get(Calendar.DAY_OF_MONTH) + "/"
				+ theDate.get(Calendar.YEAR));
		String dayOfTheDate = theDate.getDisplayName(Calendar.DAY_OF_WEEK,
				Calendar.LONG, Locale.ENGLISH);
		System.out.println("The weekday of October 4, 1582 is " + dayOfTheDate);

		// print the day and weekday of the day after

		theDate.add(Calendar.DAY_OF_MONTH, 1);
		GregorianCalendar nextDay = theDate;
		System.out.println("The date of the next day of October 4, 1582 is "
				+ (nextDay.get(Calendar.MONTH) + 1) + "/"
				+ nextDay.get(Calendar.DAY_OF_MONTH) + "/"
				+ nextDay.get(Calendar.YEAR));
		String dayOfNextDay = nextDay.getDisplayName(Calendar.DAY_OF_WEEK, 2,
				Locale.ENGLISH);
		System.out.println("The weekday of the next day of October 4, 1582 is "
				+ dayOfNextDay);

		// the result of the day after October 4, 1582 is October 15, 1582. This
		// is because the discontinuity between Julian and Gregorian Calendar.
		// Gregorian Calendar implemented Julian Calendar with omitting the leap
		// of year for years that can't be divided by 400, which gave the gap
		// between Julian and Gregorian Calendar. October 15, 1582 is the start
		// of Gregorian Calendar, and October 4, 1582 is the end of Julian
		// Calendar.
	}
}
