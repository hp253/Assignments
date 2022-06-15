package com.lockedme.common;

import java.util.Scanner;

public class LockedMeStarter {
	boolean appStart = true;

	public static void main(String args[]) {
		System.out.println("LOCKED ME PROTOTYPE APPLICATION STARTED");
		LockedMeStarter lockedMeStarter = new LockedMeStarter();
		lockedMeStarter.getInput();
		System.out.println("LOCKED ME APP CLOSED");
	}

	public boolean getInput() {
		FileLogics fileLogics = new FileLogics();
		System.out.println("PLEASE ENTER THE INPUT FOR REQUIRED PROCESS ");
		System.out.println("1 - LIST ALL FILE");
		System.out.println("2 - COPY A FILE");
		System.out.println("3 - DELETE A FILE");
		System.out.println("4 - MAIN MENU");
		System.out.println("5 - EXIT APPLICATION");
		Scanner myObj = new Scanner(System.in); // Create a Scanner object
		System.out.println("Enter the option to proceed further");
		while (appStart) {
			String userInput = null;
			try {
				userInput = myObj.nextLine(); // Read user input
			} catch (Exception e) {
				System.out.println(e.getLocalizedMessage());
			}

			String path = null;
			if ("1".equalsIgnoreCase(userInput)) {
				System.out.println("Enter the path to list all files");
				path = myObj.nextLine();
				fileLogics.sort(path);
				System.out.println("Enter any value to return to main menu");
				myObj.nextLine();
			} else if ("2".equalsIgnoreCase(userInput)) {
				//path = myObj.nextLine();
				fileLogics.copyFile();
			} else if ("3".equalsIgnoreCase(userInput)) {
				System.out.println("Enter the path to delete the file");
				userInput = myObj.nextLine();
				System.out.println(fileLogics.deleteFile(userInput));
				System.out.println("Enter 4 to return to main menu");
			} else if ("4".equalsIgnoreCase(userInput)) {
				getInput();
			} else if ("5".equalsIgnoreCase(userInput)) {
				appStart = false;
				return false;
			} else {
				System.out.println("Invalid entry Re-enter the input");			
			}
			getInput();

		}
		return true;
	}

}
