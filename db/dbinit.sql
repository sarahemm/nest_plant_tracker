BEGIN TRANSACTION;

INSERT INTO watering_statuses (name, counts_as_watered) VALUES ("Didn't need water", 0);
INSERT INTO watering_statuses (name, counts_as_watered) VALUES ("Skipped", 0);
INSERT INTO watering_statuses (name, counts_as_watered) VALUES ("Watered", 1);

INSERT INTO locations (name) VALUES ("Dining Room");
INSERT INTO locations (name) VALUES ("Living Room");
INSERT INTO locations (name) VALUES ("Kitchen");
INSERT INTO locations (name) VALUES ("Alcove");
INSERT INTO locations (name) VALUES ("Office");
INSERT INTO locations (name) VALUES ("Bathroom");
INSERT INTO locations (name) VALUES ("Bedroom");
INSERT INTO locations (name) VALUES ("Boffice");
INSERT INTO locations (name) VALUES ("Project Room");
INSERT INTO locations (name) VALUES ("Oasis");

INSERT INTO flags (name, abbrev, colour_name) VALUES ("No Tap Water", "NTW", "danger");
INSERT INTO flags (name, abbrev, colour_name) VALUES ("Bottom Water", "BW", "info");

COMMIT;
