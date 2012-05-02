<center>
# Introduction to Applied Statistics and Data Analysis for Social Science
## Yonsei University, Wonju
### Fall 2012 (*Early and Incomplete Draft Version*)
</center>
___________________________________________________________

**Instructor:** Dr. Christopher Gandrud 

- Email: <a href = "mailto:gandrud@yonsei.ac.kr">gandrud@yonsei.ac.kr</a>
- Website: [http://christophergandrud.blogspot.com/](http://christophergandrud.blogspot.com/)

**Office Hours:** TBD (정208)

- You can also send me an email or come to my office whenever you need to.

**Time:** TBD

**Objectives:** This course's main objective is to: *learn how to take raw data, explore it, and present the results in a useful way*. In this course you will learn all of the basic skills needed to do each of these steps with the statistical language **R**. *Part I* of the course introduces you to both basic data structures and **RStudio** (a program that makes using **R** easier). *Part II* introduces basic data analysis and visualizations techniques. *Part III* covers slightly more advanced statistical tools, primarily linear regression. Finally, in *Part IV* we will apply all of these skills in a research project. 

As part of achieving this straightforward objective, the course is intended to also do the following:

The course is intended to be *useful*. I hope that the course will be one of the more useful courses you take in university. It is intended to be useful for students who want to go on to do graduate-level research. It is also intended to be useful for students who want to go directly into the non-academic public or private sectors and be able to effectively analyse and present data. I hope it is also useful for you as a citizen in that you will be better able to critically read the data that informs many of our daily decisions.

This course will introduce you to a vibrant and growing community of open source data analysts that are pushing the state of the art. (Another benefit to you as students is that open source software is free.)

This course emphasises the collection and analysis of social science data (particularly political science and economic data at the country-level). However, almost all of the skills you learn in this course can be applied to data in most other areas of study. **R** is widely used not only in the social sciences but also in medicine, biology, physics, and business.

**Prerequisites:** If you have taken high school algebra, can use Microsoft Excel, and have an interest in experimenting and learning new things then you are qualified to take this course.

**Course Materials:** The course syllabus, lecture slides, activities, and some data sets can be found on the course **github** site:

> [https://github.com/christophergandrud/Introduction\_to\_Statistics\_and\_Data\_Analysis\_Yonsei](https://github.com/christophergandrud/Introduction\_to\_Statistics\_and\_Data\_Analysis\_Yonsei). 

You are reading the course syllabus now. It has the file name `README.md` on **github**.

**Software:** We use four software programs in this course:

- Microsoft Excel
- Dropbox
- R (version 2.15)
- RStudio (version 0.96)

All of the classroom computers have these programs installed. Please feel free to use your own computer. You can install both **R** and **RStudio** for free (they are open source!) on Windows, Mac, or Linux computers. Just take two steps:

1. Install **R**: [http://www.r-project.org/](http://www.r-project.org/)

2. Install **RStudio**: [http://rstudio.org/](http://rstudio.org/)

**Dropbox** is an easy to use cloud storage system. You will be able to store and access from almost any computer all of your files for this course in **Dropbox**. You can also submit many of your assignments to me through it. You can download **Dropbox** from [https://www.dropbox.com/](https://www.dropbox.com/). You will also need to sign up for a (free) account.

Microsoft Excel is not free, but you probably already have it. If you don't, you can use any other spreadsheet program like Hancell, Numbers, or Open Office. Open Office is open source and can be downloaded for free from [http://www.openoffice.org/](http://www.openoffice.org/).

**Readings:** This is an applied course, so I want you to *do* more than you *consume* (read, listen to lectures). However, completing the course readings before each class is an important part of (a) being prepared to do the work in class, (b) obtaining a solid foundation in the methods and theory behind what we do in class, and (c) pointing you to useful reference material.

The main textbook for this class is *OpenIntro Statistics (first edition)*. You can find the PDF at: 

>[http://www.openintro.org/stat/downloads.php](http://www.openintro.org/stat/downloads.php). 

*OpenIntro Statistics* is an open source introductory statistics textbook written mostly by David M. Diez, Christopher D. Barr, and Mine Çetinkaya-Rundel. 

Most of the other readings for the course will be academic articles or blogposts by academic bloggers. I hope these will introduce you to the very active social science blogging community who are advancing the state of the art in data management and analysis.

I also assign a few chapters from (and recommend for **R** reference):

> Matloff, Norman. 2011. *The Art of R Programming: A Tour of Statistical Design Software*. San Francisco: No Starch Press.  

For more reference on using **R** you might find these resources useful:

- *Overall R reference:* Johnson, Paul, E. 2012. "Rtips. Revivial 2012". [http://pj.freefaculty.org/R/Rtips.html](http://pj.freefaculty.org/R/Rtips.html).

- *Generally cutting-edge posts on how to use R:* R-Bloggers. [http://www.r-bloggers.com/](http://www.r-bloggers.com/)

**Assessment:**

- 10% Class attendance and participation
- 40% 7 Short assignments: Due weeks 2, 4, 6, 8, 9, 10, 11 
- 50% Research project (paper and presentation): Due Week 16 

I will give more details about each of these assignments in class.

## Part I: Introduction to Data Gathering and Management in R

### Week 1: Course Introduction and R Introduction
I cover the course objectives, give you some examples of the type of data analysis and visualizations you will learn how to do in the course, and start working with **RStudio**.

*Extra:*

> **Introduction:** Matloff, Norman. 2011. *The Art of R Programming: A Tour of Statistical Design Software*. San Francisco: No Starch Press.
    
### Week 2: Types of Data

> **p. 1-8, 26-36:** *OpenIntro Statistics*

### Week 3: Data Input
Where can we find quality social science data? How do we get this into **R** so we can start analysing it?

### Week 4: Replication!
How to document your work so that others can reproduce it. Why reproducibility is so important in social science.

> King, Gary. 1995. “Replication, Replication.” PS: Political Science and Politics 28(3): 444–452. 

## Part II: Basic Data Analysis and Visualization

### Week 5: Descriptive Statistics
What kinds of simple statistical summaries can we use to understand and present our data?

> **p. 9-26:** *OpenIntro Statistics*

### Week 6: Basic Graphs in R
How can we use **R** to create visual summaries of our data? What is `ggplot2`? What is `googleVis`?

> Chen, Edwin. 2012. "Quick Introduction to ggplot2" [http://blog.echen.me/2012/01/17/quick-introduction-to-ggplot2/](http://blog.echen.me/2012/01/17/quick-introduction-to-ggplot2/)

### Week 7: Overview of Statistical Inference
How confident are we that our findings in our samples are actually present in the real world?

> **Chapter 4:** *OpenIntro Statistics*

### Week 8: Statistical Inference with Large Samples
What basic tools can we use to make inferences when we have large data samples?

> **Chapter 5:** *OpenIntro Statistics*

## Part III: Introduction to Linear Regression

### Week 10: Simple Linear Regression
What is simple linear regression? Why is it so useful for social scientists?

> **Chapter 7:** *OpenIntro Statistics*

*Extras*

> **p. 305-311:** Imai, Kosuke, Gary King, and Olivia Lau. 2012. *Zelig: Everyone's Favorite Statistical Software.* [http://r.iq.harvard.edu/docs/zelig.pdf](http://r.iq.harvard.edu/docs/zelig.pdf)

### Week 11: Multiple Linear Regression
What if we have more than one independent variable?

> **Chapter 8:** *OpenIntro Statistics*

### Week 12: Presenting Regression results
How can we most effectively present the results from our regression analyses using simulations and graphs? How can we use `Zelig` to estimate regression results?

*Extras:*

> King, Gary, Michael Tomz, and Jason Wittenberg. 2000. “Making the Most of Statistical Analyses: Improving Interpretation and Presentation.” American Journal of Political Science 44(2): 347–361.

## Part IV: Applied Data Analysis: Research Projects
In the final part of the course class time is dedicated to applying what we have learned so far to actually gather, analyse, and present data.

### Week 12: Research Question Design and Data Download

### Week 13: Data Clean Up and Exploratory Analysis

### Week 14: Statistical Analysis and Visualize Results

### Week 15: Write Up Results and Prepare Presentations

### Week 16: Research Project Presentations