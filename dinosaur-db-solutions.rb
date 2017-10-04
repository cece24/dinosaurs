1. Lets start by figuring out how many dinosaurs we have. Count the number of dinosaurs.
SELECT COUNT(id) FROM dinos;
# count
# -------
#   331


2. We want to open up our own version of Jurassic Park, but this time only with dinosaurs who are actually from the Jurassic period. Find all the dinosaurs from the Jurassic period.
SELECT name FROM dinos WHERE period = 'Jurassic';
# long list of 92 dinosaur names


3. Jurassic Park was a huge success for us. Now we want to open up a sequel park: Cretaceous Park. This time though, we are a little more organized, and we want to know how much space all these dinosaurs are going to take up. Find the total sum length of all the dinosaurs from the Cretaceous period.
SELECT SUM(length) FROM dinos WHERE period = 'Cretaceous';
# sum
# ---------
# 1366.45


4. Great news! Our board of investors recently secured us a large island where we can put all the dinosaurs from both Jurassic Park and Cretaceous Park. This new park will be called Juraceous Park, which according to our focus groups really rolls off the tongue. Find all the dinosaurs from either the Jurassic OR Cretaceous periods, and order them by their species name alphabetically.
SELECT species FROM dinos WHERE period = 'Jurassic' OR period = 'Cretaceous' ORDER BY species ASC;
# long alphabetical list


5. Saurischians are the "lizard hipped" order of dinosaurs, and one of the two main branches. All carnivorous dinosaurs are Saurischians, but not all Saurischians are carnivorous. Find all the dinosaurs from the t_order Saurischia that are Herbivorous.
SELECT name FROM dinos WHERE t_order = 'Saurischia' AND diet = 'Herbivorous';
# list of 62 dinosaurs


6. Dinosaur names are hard to remember. Find the shortest dinosaur, and rename it Shortie.
SELECT id, name, length FROM dinos ORDER BY length ASC;
# id  |          name           | length
# -----+-------------------------+--------
# 160 | Liaoxiornis             |   0.08
# 250 | Confuciusornis          |   0.25
#  59 | Shanag                  |   0.45
# 301 | Archaeopteryx           |    0.5 ....

UPDATE dinos SET name = 'Shortie' WHERE id = 160;


7. It is the first day of Dino School, and we re doing roll call. Find the alphabetically first dinosaur, so we can make sure they re present for class.
SELECT id, name FROM dinos ORDER BY name ASC;
#  id  |          name
# -----+-------------------------
#  331 | Aardonyx
#  330 | Abelisaurus
#  329 | Achelousaurus
#  328 | Achillobator
#  327 | Acrocanthosaurus ...
Aardonyx
