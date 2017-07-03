BEGIN;
INSERT INTO groceries (name)
  VALUES ('organic apple cider vinegar');
INSERT INTO comments (author, body, grocery_id)
  VALUES ('Teddy', 'this helps me fall asleep', 1), ('Teddy', 'helps ease my joint pain too in the morning', 1);
COMMIT;
