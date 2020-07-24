# Birla Institute of Technology &amp; Science-Pilani, Hyderabad Campus

**First Semester 2017-2018**

**Principles of Programming languages (CS F301)**

## Assignment3:Prolog Due Date:20/11/2017Maximum Marks :20

**Goal and**** motivation:**

This assignment aims at testing your understanding about Prolog and using Logic Programming to solve basic computer science problems and puzzles.

## Problem Statements:

Q1. In an Engineering College there are four students, Arpit, Manoj, Shrishti, and Dhruv who study different majors. The task of this problem is to identify their respective majors, their TV show preferences, and their birth year. The possible values for each attribute are as follows:

Major - computer\_science, electronics, mechanical, civil

TV show preference - house\_of\_cards, black\_mirror, mr\_robot, suits Birth years - 1994, 1995, 1996, 1997

**Note:** Each attribute mentioned has a unique value for each individual.

We know about some details related to these students. To solve this puzzle, use the information given below.

1. The student interested in the TV show **suits** was born in **1996**.
2. ThestudentinterestedintheTVshow **house\_of\_cardswas** bornafterthestudentdoing

**electronics** as major.

1. Shrishti is not the student who has **computer\_science** as theirmajor.
2. Either the student who has **electronics** as his/her major or Dhruv was born in **1996**. The other student was born in **1995**.
3. Manoj was not born in **1995**.
4. ThestudentwholikestheTVshow **black\_mirror**** has ****computer\_science**** as**his/hermajor.
5. The major for Dhruv or Arpit is **mechanical**.
6. Neither Shrishti nor Arpit likes **house\_of\_cards**.
7. The student who has his/her major as **computer\_science** was born beforeDhruv.
8. The student who likes **suits** has either **civil** or **mechanical** as his/hermajor.

**Note:** Your answers should be in the form of Student\_name = [Major, TV\_Show, Birth\_Year].

#### Q2.Number to Words.

Your task is to convert a numerical value into its equivalent written word form. Write a predicate num\_to\_words to print the (non-negative) integer numbers in full words.

For e.g. 254 can be written as two-hundred-fifty-four

#### Q3.Relationship Puzzle

Given below is a database of relationships between people in LaLaLand. The predicate father (X

,Y)canberepresentedtoindicatethefact&quot;XisthefatherofY&quot;.Similarly,female(X)canindicate &quot;X is a woman&quot;. Write a prolog code that can identify the followingrelationships.

1. Mother(X,Y)
2. Brother(X,Y)
3. Grandson(X,Y)
4. Granddaughter(X,Y)
5. Uncle(X,Y)
6. Aunty(X,Y)
7. Cousin(X,Y)

#### Database facts

  1. disney is the father ofmickeymouse.
  2. disney is the father ofdonaldduck
  3. mickeymouse is the father ofminto
  4. mickeymouse is the father ofmorley
  5. mickeymouse is the father ofmorty
  6. mickeymouse is the father ofmaisie
  7. donaldduck is the father ofgoofy
  8. minto, morley, mickeymouse, donaldduck aremen.
  9. morty, maisie, minniemouse, nemo and daisyduck arewomen.
  10. minniemouse is the wife ofmickeymouse
  11. nemo is the wife ofgoofy
  12. daisyduck is the wife ofdonaldduck

Pleaseassumethenormalsettingslikemarriageisonlybetweenamaleandafemaleandallfathers are males (even if it&#39;s notspecified).

Example queries:

?- Mother(minto,minniemouse)True.

?-cousin(morty,X)X= goofy

True X=nemo False.

#### Q4. Median of a list of numbers

Write a program to find out the median of a list of numbers.

#### Q5. Pastries

Inthisproblemweconsideradatabaseofpastrystores.Eachstorehasaname,alistof employees, and a list of pastries that can be purchased in the store, which are encoded inastorepredicate.Eachpastryisdefinedbyaname,alistoffruits,andaprice,which areencodedinapastrypredicate.Forexample,herearethreepredicatesdefiningthree different pastrystores:

store(chai\_coffee\_company, [nike, nica, seth],

[pastry(berry, [orange, blueberry, strawberry], 2), pastry(tropical, [orange, banana, mango, guava], 3), pastry(blue, [banana, blueberry], 3) ]).

store(bits\_and\_bytes, [coet,dos],

[pastry(pinacolada, [orange, pineapple, coconut], 2), pastry(green, [orange, banana, kiwi], 5), pastry(purple, [orange, blueberry, strawberry], 2), pastry(smooth, [orange, banana, mango],1) ]).

store(yumpys, [arvin,vino,kart],

[pastry(combo1, [strawberry, orange, banana], 2), pastry(combo2, [banana, orange], 5), pastry(combo3, [orange, peach, banana], 2), pastry(combo4, [guava, mango, papaya, orange],1), pastry(combo5, [grapefruit, banana, pear],1) ]).

The first store has three employees and sells three different pastries, the second store hastwoemployees and sells four different pastries, and the third store has three employeesandsellsfivedifferentpastries.Youcanassumethattherearenoduplicates (pineappleis not listed twice in any ingredient list,nicais not listed twice in any employee list, the same pastry specification is not listed twice in any store menu, etc.). Given a database of pastry store facts, implement the predicates given in 5.1 and5.2.

  1. Write a Prolog predicate more\_than\_four(X) that is true if store X has four or more pastries on its menu. Forinstance:

?-more\_than\_four(chai\_coffee\_company).No

?-more\_than\_four(X).X = bits\_and\_bytes;X = yumpys;

No

  1.
### Write a Prolog predicate exists(X) that is true if there is a store that sells a pastry named X. Forinstance:

?-exists(combo1).

Yes

?-exists(slimy).

No

?-exists(X).

X = berry;

X = tropical\&lt;enter\&gt;Yes

**Deliverables:**

    1.
### Prolog codes for all the fivequestions

**During the demo, your code should give correct answers to multiple queries like the example queries given above.**

**Submissions:**

The assignment has to be submitted before the due date (11.59 p.m. on 20/11/2017) to email id:-[ppltwenty.17@gmail.com](mailto:ppltwenty.17@gmail.com).

The subject of email should be &quot;Assignment-3 First Sem 2017-18&quot;.

Please make sure that the body of the email has the names and id numbers of all the students in the group. Name the assignment zip folder asAsst3\_id1\_id2\_id3. (Eg. Asst3\_14005\_14096\_14130.tar.gz)

In case of any queries pleasecontact

Monica Adusumilli[f2014005@hyderabad.bits-pilani.ac.in](mailto:f2014005@hyderabad.bits-pilani.ac.in)Kartik Sethi[kartik1295@gmail.com](mailto:kartik1295@gmail.com)
