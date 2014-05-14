import java.util.Scanner;

/**
 * CSCI 203, Yifan Ge
 * Nov 5, 2010, 3:05:38 AM
 */

/**
 * This class contains a constructor and methods that translates information
 * from icalendar file to html file.
 * 
 * @author Yifan Ge
 * 
 */
public class CalendarTranslator {
	private String file;

	/**
	 * Constructs a calendar translator object
	 * 
	 * @param file
	 *            the ical that needs to be translated
	 */
	public CalendarTranslator(String file) {
		this.file = file;
	}

	/**
	 * Translates the ical file to HTML format and prints them out
	 */
	public String translate() {
		Scanner fileText = TranslatorUtils.openFile(file);
		String htmlFile = null;
		htmlFile = printTitle(file);
		int numberOfEvent = 0;
		String line = fileText.nextLine();
		while (!isStartOfEvent(line))
			line = fileText.nextLine();
		while (!isTheEndOfCalendar(line)) {
			if (line.equals("BEGIN:VEVENT")) {
				numberOfEvent++;
				htmlFile = htmlFile + translateStartEvent(numberOfEvent);
			} else if (isLocationLine(line))
				htmlFile = htmlFile + translateLocation(line);
			else if (isStartTimeLine(line))
				htmlFile = htmlFile + translateStartTime(line);
			else if (isSummaryLine(line))
				htmlFile = htmlFile + translateSummary(line);
			else if (isEndTimeLine(line))
				htmlFile = htmlFile + translateEndTime(line);
			else if (isDurationLine(line))
				htmlFile = htmlFile + translateDuration(line);
			else if (isDescriptionLine(line))
				htmlFile = htmlFile + translateDescription(line);
			else if (isEndOfEvent(line)) {
				htmlFile = htmlFile + translateEndEvent();
			}
			line = fileText.nextLine();
		}
		htmlFile = htmlFile + printEndOfCalendar();
		return htmlFile;
	}

	/**
	 * Checks if the line is the start of an event
	 * 
	 * @param line
	 *            the line
	 * @return true when it is the start of an event; false when it is not
	 */
	private boolean isStartOfEvent(String line) {
		return line.equals("BEGIN:VEVENT");
	}

	/**
	 * Checks if the line is about the location
	 * 
	 * @param line
	 *            the line
	 * @return whether the line is about the location
	 */
	private boolean isLocationLine(String line) {
		return line.startsWith("LOCATION");
	}

	/**
	 * Checks if the line is about the start time
	 * 
	 * @param line
	 *            the line
	 * @return whether the line is about the start time
	 */
	private boolean isStartTimeLine(String line) {
		return line.startsWith("DTSTART");
	}

	/**
	 * Checks if the line is about the summary
	 * 
	 * @param line
	 *            the line
	 * @return whether the line is about the summary
	 */
	private boolean isSummaryLine(String line) {
		return line.startsWith("SUMMARY");
	}

	/**
	 * Checks if the line is about the end time
	 * 
	 * @param line
	 *            the line
	 * @return whether the line is about the end time
	 */
	private boolean isEndTimeLine(String line) {
		return line.startsWith("DTEND");
	}

	/**
	 * Checks if the line is about the duration
	 * 
	 * @param line
	 *            the line
	 * @return whether the line is about the duration
	 */
	private boolean isDurationLine(String line) {
		return line.startsWith("DURATION");
	}

	/**
	 * Checks if the line is about the description
	 * 
	 * @param line
	 *            the line
	 * @return whether the line is about the description
	 */
	private boolean isDescriptionLine(String line) {
		return line.startsWith("DESCRIPTION");
	}

	/**
	 * Checks if the line is the end of an event
	 * 
	 * @param line
	 *            the line
	 * @return true when it is the end of an event; false when it is not
	 */
	private boolean isEndOfEvent(String line) {
		return line.equals("END:VEVENT");
	}

	/**
	 * Checks if the line is the end of the calendar
	 * 
	 * @param line
	 *            the line
	 * @return true when it is the end; false when it's not
	 */
	private boolean isTheEndOfCalendar(String line) {
		return line.equals("END:VCALENDAR");
	}

	/**
	 * Translates the start line of an event
	 * 
	 * @param numberOfEvent
	 *            the number of event
	 */
	private String translateStartEvent(int numberOfEvent) {
		return "<li>Event " + numberOfEvent + "\n  <ul>\n";
	}

	/**
	 * Translates the location of an event
	 * 
	 * @param line
	 *            the line
	 */
	private String translateLocation(String line) {
		String[] location = line.split(":");
		return "  <li><b>Location:</b> " + location[1] + "</li>\n";
	}

	/**
	 * Translates the start time of an event
	 * 
	 * @param line
	 *            the line
	 */
	private String translateStartTime(String line) {
		return "  <li><b>Start time:</b> " + timeConverter(line) + "</li>\n";
	}

	/**
	 * Translates the summary of an event
	 * 
	 * @param line
	 *            the line
	 */
	private String translateSummary(String line) {
		String[] summary = line.split(":");
		return "  <li><b>Summary:</b> " + summary[1] + "</li>\n";
	}

	/**
	 * Translates the end time of an event
	 * 
	 * @param line
	 *            the line
	 */
	private String translateEndTime(String line) {
		return "  <li><b>End time:</b> " + timeConverter(line) + "</li>\n";
	}

	/**
	 * Translates the duration of an event
	 * 
	 * @param line
	 *            the line
	 */
	private String translateDuration(String line) {
		return "  <li><b>Duration:</b> " + durationConverter(line) + "</li>\n";
	}

	/**
	 * Translates the description of an event
	 * 
	 * @param line
	 *            the line
	 */
	private String translateDescription(String line) {
		String[] description = line.split(":");
		return "  <li><b>Description:</b> " + description[1] + "</li>\n";
	}

	/**
	 * Translates the end line of an event
	 */
	private String translateEndEvent() {
		return "  </ul>\n" + "</li>\n";
	}

	/**
	 * Prints the end of the calendar
	 */
	private String printEndOfCalendar() {
		return "</ul>\n" + "</body>\n" + "</html>";
	}

	/**
	 * Prints the HTML title
	 * 
	 * @param title
	 *            the title of the webpage
	 */
	private String printTitle(String title) {
		return "<html>\n" + "<head>\n" + "<title>" + title + "</title>\n"
				+ "</head>\n\n<body>\n<ul>\n";
	}

	/**
	 * Converts ical time format to MM/DD/YEAR HH:MM
	 * 
	 * @param time
	 *            the start/end time string in ical file
	 * @return the time in format of MM/DD/YEAR HH:MM
	 */
	private static String timeConverter(String time) {
		String[] split = time.split(":");
		int timeArray = 1;
		int yearStartsIndex = 0;
		int yearEndsIndex = 4;
		int monthStartsIndex = 4;
		int monthEndsIndex = 6;
		int dayStartsIndex = 6;
		int dayEndsIndex = 8;
		int hourStartsIndex = 9;
		int hourEndsIndex = 11;
		int minStartIndex = 11;
		int minEndsIndex = 13;
		String year = split[timeArray]
				.substring(yearStartsIndex, yearEndsIndex);
		String month = split[timeArray].substring(monthStartsIndex,
				monthEndsIndex);
		String day = split[timeArray].substring(dayStartsIndex, dayEndsIndex);
		if (split[timeArray].length() > 9) {
			String hour = split[timeArray].substring(hourStartsIndex,
					hourEndsIndex);
			String min = split[timeArray]
					.substring(minStartIndex, minEndsIndex);
			return month + "/" + day + "/" + year + " " + hour + ":" + min;
		} else
			return month + "/" + day + "/" + year;
	}

	/**
	 * Converts duration time from ical format to HH:MM
	 * 
	 * @param duration
	 *            the duration string in ical file
	 * @return the duration in format of HH:MM
	 */
	private static String durationConverter(String duration) {
		int hourStartsIndex = duration.lastIndexOf("T") + 1;
		int hourEndsIndex = duration.lastIndexOf("H");
		int hour = Integer.parseInt(duration.substring(hourStartsIndex,
				hourEndsIndex));
		int min = 0;
		if (duration.endsWith("M")) {
			int minStartsIndex = duration.lastIndexOf("H") + 1;
			int minEndsIndex = duration.lastIndexOf("M");
			min = Integer.parseInt(duration.substring(minStartsIndex,
					minEndsIndex));
		}
		return String.format("%02d:%02d", hour, min);
	}

	/**
	 * Converts icalendar file to html file
	 * 
	 * @param args
	 *            ical file
	 */
	public static void main(String[] args) {
		if (args.length != 1 || !args[0].endsWith(".ics")) {
			System.err.println("Please enter a .ics file!");
			System.exit(0);
		}
		CalendarTranslator doc = new CalendarTranslator(args[0]);
		System.out.println(doc.translate());
	}

}
