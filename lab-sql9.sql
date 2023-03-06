USE sakila;

# Create a table rentals_may to store the data from rental table with information for the month of May.

SELECT * FROM rental;

CREATE TABLE `rentals_may` (
    rental_id int(11) default null,
    rental_date DATETIME,
    inventory_id int(11) default null,
    customer_id int(11) default null, 
    return_date DATETIME,
    staff_id int(11) default null, 
    last_update DATETIME
);

# Insert values in the table rentals_may using the table rental, filtering values only for the month of May.

INSERT INTO rentals_may
SELECT * FROM rental
WHERE rental_date LIKE "2005-05%";

# Create a table rentals_june to store the data from rental table with information for the month of June.

CREATE TABLE `rentals_june` (
    rental_id int(11) default null,
    rental_date DATETIME,
    inventory_id int(11) default null,
    customer_id int(11) default null, 
    return_date DATETIME,
    staff_id int(11) default null, 
    last_update DATETIME
);

# Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

INSERT INTO rentals_june
SELECT * FROM rental
WHERE rental_date LIKE "2005-06%";

SELECT * FROM rentals_june;

# Check the number of rentals for each customer for May.

SELECT customer_id, COUNT(rental_id) AS num_rentals FROM rentals_may
GROUP BY customer_id
ORDER BY num_rentals DESC;

SELECT customer_id, COUNT(rental_id) AS num_rentals FROM rental
WHERE rental_date LIKE "2005-05%"
GROUP BY customer_id
ORDER BY num_rentals DESC;

# Check the number of rentals for each customer for June.

SELECT customer_id, COUNT(rental_id) AS num_rentals FROM rentals_june
GROUP BY customer_id
ORDER BY num_rentals DESC;

