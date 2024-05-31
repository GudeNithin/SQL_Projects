SQLite Installation and Cricket Tournament Database Project Cheat Sheet

Step 1: Install SQLite on Windows 10
Download SQLite:
--Open your browser and search for "SQLite3" on Google.
--Click on the official SQLite website sqlite.org.
--Navigate to the "Download" section of the website.
--Under "Pre-compiled Binaries for Windows", download the ZIP file for SQLite.

Extract and Setup:
--Extract the downloaded ZIP file.
--Rename the extracted folder to a simpler name (e.g., sqlite).
--Move this folder to your C:\ drive.

Set Environment Variables:
--Copy the path of the SQLite folder (e.g., C:\sqlite).
--Open your system's environment variables (search for "environment variables" in the start menu).
--In the System Properties window, click on the "Environment Variables" button.
--In the "System variables" section, find and select the "Path" variable, then click "Edit".
--Click "New" and paste the copied path. Click "OK" to save the changes.

Verify Installation:
--Open the command prompt and type sqlite3.
--If installed correctly, it should display the installed version of SQLite.

Step 2: Create a Database
Navigate to the Desired Directory:
--Open the command prompt and navigate to the directory where you want to create your database (for example, create a new folder named Database on the desktop).

Create a New Database:
--In the command prompt, type sqlite3 CricketTournament.db to create a new database named CricketTournament.db.
--You can check the path of your newly created database by typing .database in the SQLite shell.

Step 3: Create Tables for the Cricket Tournament Database Management System
Open the SQLite Shell:
--In the command prompt, type sqlite3 CricketTournament.db to create and open a new SQLite database file named CricketTournament.db.
