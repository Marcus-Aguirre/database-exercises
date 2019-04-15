CREATE DATABASE adlister;
USE adlister;

CREATE TABLE users(
                    user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                    first_name VARCHAR(155) NOT NULL,
                    last_name VARCHAR(155) NOT NULL,
                    user_email VARCHAR(155) NOT NULL,
                    user_password VARCHAR(155) NOT NULL,
                    UNIQUE(first_name, last_name),
                    UNIQUE(user_email),
                    PRIMARY KEY(user_id)
);

CREATE TABLE categories(
                         cat_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                         category VARCHAR(155),
                         PRIMARY KEY(cat_id)
);


CREATE TABLE ads(
                  ad_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                  user_id INT UNSIGNED NOT NULL,
                  cat_id INT UNSIGNED NOT NULL,
                  description TEXT NOT NULL,
                  created_on DATE,
                  FOREIGN KEY(user_id) REFERENCES users(user_id),
                  FOREIGN KEY(cat_id) REFERENCES categories(cat_id),
                  PRIMARY KEY(ad_id)
);


CREATE TABLE user_ad(
                      user_id INT UNSIGNED NOT NULL,
                      ad_id INT UNSIGNED NOT NULL,
                      cat_id INT UNSIGNED NOT NULL,
                      FOREIGN KEY (user_id) REFERENCES users(user_id),
                      FOREIGN KEY (ad_id) REFERENCES ads(ad_id)
);



/*  For a given ad, what is the email
    address of the user that created it? */
SELECT user_email FROM users
WHERE user_id = (
  SELECT user_id FROM ads
  WHERE ad_id = 1
  );

/*  For a given ad, what category, or
    categories does it belong to?       */
SELECT category FROM categories
WHERE cat_id = (
  SELECT cat_id FROM ads
  WHERE ad_id = 1
  );


/*  For a given category, show all the
    ads that are in that category       */
SELECT * FROM ads
WHERE cat_id = (
SELECT cat_id FROM categories
  WHERE category = 'Scary Comedy Romance'
  );


/*  For a given user, show all the
    ads they have posted                */
SELECT _ FROM _
WHERE _ = _;
















