Study design
============
The run_analysis.R script reads data from the "Human Activity Recognition Using Smartphones Dataset Version" (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and produces a new tidy dataset which may be used for further analysis.



Code book
=========
Number of observations: 180
Number of variables: 69
The prefix 't' in variables denote time.
The prefix 'f' in variables denote that a Fast Fourier Transform (FFT) was applied.
From variable 4 to 89 the value type is 'numeric'.

1. activityId
  * The identifier of the activity.
  * type: integer
  * Values: 1 - 6
2. activityName
  * The name of the activity.
  * type: factor
  * values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
3. subject_id
  * An identifier of the subject who carried out the experiment.
  * type: integer
  * values: 1 - 30
4. tBodyAcc-mean()-X
  * Mean in X axe for body linear acceleration signal (time)
5. tBodyAcc-mean()-Y
  * Mean in Y axe for body linear acceleration signal (time)
6. tBodyAcc-mean()-Z
  * Mean in Z axe for body linear acceleration signal (time)
7. tGravityAcc-mean()-X
  * Mean in X axe for gravity acceleration signal (time)
8. tGravityAcc-mean()-Y
  * Mean in Y axe for gravity acceleration signal (time)
9. tGravityAcc-mean()-Z
  * Mean in Z axe for gravity acceleration signal (time)
10. tBodyAccJerk-mean()-X
  * Mean in X axe for jerk signal obtained from body linear acceleration (time)
11. tBodyAccJerk-mean()-Y
  * Mean in Y axe for jerk signal obtained from body linear acceleration (time)
12. tBodyAccJerk-mean()-Z
  * Mean in Z axe for jerk signal obtained from body linear acceleration (time)                  
13. tBodyGyro-mean()-X
  * Mean in X axe for body angular velocity (time)
14. tBodyGyro-mean()-Y
  * Mean in Y axe for body angular velocity (time)
15. tBodyGyro-mean()-Z
  * Mean in Z axe for body angular velocity (time)
16. tBodyGyroJerk-mean()-X
  * Mean in X axe for jerk signal obtained from body angular velocity (time)
17. tBodyGyroJerk-mean()-Y
  * Mean in Y axe for jerk signal obtained from body angular velocity (time)
18. tBodyGyroJerk-mean()-Z
  * Mean in Z axe for jerk signal obtained from body angular velocity (time)                   
19. tBodyAccMag-mean()
  * Mean for magnitud signal obtained from body linear acceleration (time)
20. tGravityAccMag-mean()
  * Mean for magnitud signal obtained from gravity acceleration (time)
21. tBodyAccJerkMag-mean()
  * Mean for magnitud jerk signal obtained from body linear acceleration (time)
22. tBodyGyroMag-mean()
  * Mean for magnitud signal obtained from body angular velocity (time)
23. tBodyGyroJerkMag-mean()
  * Mean for magnitud jerk signal obtained from body angular velocity (time)
24. fBodyAcc-mean()-X
  * Mean in X axe for body linear acceleration signal (FFT)            
25. fBodyAcc-mean()-Y
  * Mean in Y axe for body linear acceleration signal (FFT)
26. fBodyAcc-mean()-Z
  * Mean in Z axe for body linear acceleration signal (FFT)
27. fBodyAccJerk-mean()-X 
  * Mean in X axe for jerk signal obtained from body linear acceleration (FFT)
28. fBodyAccJerk-mean()-Y
  * Mean in Y axe for jerk signal obtained from body linear acceleration (FFT)
29. fBodyAccJerk-mean()-Z
  * Mean in Z axe for jerk signal obtained from body linear acceleration (FFT) 
30. fBodyGyro-mean()-X  
  * Mean in X axe for body angular velocity (FFT)
31 fBodyGyro-mean()-Y
  * Mean in Y axe for body angular velocity (FFT)
32. fBodyGyro-mean()-Z
  * Mean in Z axe for body angular velocity (FFT)
33. fBodyAccMag-mean()     
  * Mean for magnitud signal obtained from body linear acceleration (FFT)
34. fBodyBodyAccJerkMag-mean()
  * Mean for magnitud jerk signal obtained from body linear acceleration (FFT)
35. fBodyBodyGyroMag-mean()
  * Mean for magnitud signal obtained from body angular velocity (FFT)
36. fBodyBodyGyroJerkMag-mean()
  * Mean for magnitud jerk signal obtained from body angular velocity (FFT)
37. tBodyAcc-std()-X
  * Standard deviation in X axe for body linear acceleration signal (time)
38. tBodyAcc-std()-Y
  * Standard deviation in Y axe for body linear acceleration signal (time)
39. tBodyAcc-std()-Z
  * Standard deviation in Z axe for body linear acceleration signal (time)
40. tGravityAcc-std()-X
  * Standard deviation in X axe for gravity acceleration signal (time)
41. tGravityAcc-std()-Y
  * Standard deviation in Y axe for gravity acceleration signal (time)
42. tGravityAcc-std()-Z
  * Standard deviation in Z axe for gravity acceleration signal (time)
43. tBodyAccJerk-std()-X
  * Standard deviation in X axe for jerk signal obtained from body linear acceleration (time)
44. tBodyAccJerk-std()-Y
  * Standard deviation in Y axe for jerk signal obtained from body linear acceleration (time)
45. tBodyAccJerk-std()-Z
  * Standard deviation in Z axe for jerk signal obtained from body linear acceleration (time)                  
46. tBodyGyro-std()-X
  * Standard deviation in X axe for body angular velocity (time)
47. tBodyGyro-std()-Y
  * Standard deviation in Y axe for body angular velocity (time)
48. tBodyGyro-std()-Z
  * Standard deviation in Z axe for body angular velocity (time)
49. tBodyGyroJerk-std()-X
  * Standard deviation in X axe for jerk signal obtained from body angular velocity (time)
50. tBodyGyroJerk-std()-Y
  * Standard deviation in Y axe for jerk signal obtained from body angular velocity (time)
51. tBodyGyroJerk-std()-Z
  * Standard deviation in Z axe for jerk signal obtained from body angular velocity (time)                   
52. tBodyAccMag-std()
  * Standard deviation for magnitud signal obtained from body linear acceleration (time)
53. tGravityAccMag-std()
  * Standard deviation for magnitud signal obtained from gravity acceleration (time)
54. tBodyAccJerkMag-std()
  * Standard deviation for magnitud jerk signal obtained from body linear acceleration (time)
55. tBodyGyroMag-std()
  * Standard deviation for magnitud signal obtained from body angular velocity (time)
56. tBodyGyroJerkMag-std()
  * Standard deviation for magnitud jerk signal obtained from body angular velocity (time)
57. fBodyAcc-std()-X
  * Standard deviation in X axe for body linear acceleration signal (FFT)            
58. fBodyAcc-std()-Y
  * Standard deviation in Y axe for body linear acceleration signal (FFT)
59. fBodyAcc-std()-Z
  * Standard deviation in Z axe for body linear acceleration signal (FFT)
60. fBodyAccJerk-std()-X 
  * Standard deviation in X axe for jerk signal obtained from body linear acceleration (FFT)
61. fBodyAccJerk-std()-Y
  * Standard deviation in Y axe for jerk signal obtained from body linear acceleration (FFT)
62. fBodyAccJerk-std()-Z
  * Standard deviation in Z axe for jerk signal obtained from body linear acceleration (FFT) 
63. fBodyGyro-std()-X  
  * Standard deviation in X axe for body angular velocity (FFT)
64. fBodyGyro-std()-Y
  * Standard deviation in Y axe for body angular velocity (FFT)
65. fBodyGyro-std()-Z
  * Standard deviation in Z axe for body angular velocity (FFT)
66. fBodyAccMag-std()     
  * Standard deviation for magnitud signal obtained from body linear acceleration (FFT)
67. fBodyBodyAccJerkMag-std()
  * Standard deviation for magnitud jerk signal obtained from body linear acceleration (FFT)
68. fBodyBodyGyroMag-std()
  * Standard deviation for magnitud signal obtained from body angular velocity (FFT)
69. fBodyBodyGyroJerkMag-std()
  * Standard deviation for magnitud jerk signal obtained from body angular velocity (FFT)


**<>** with :sparkling_heart: by [@eherrador].

[@eherrador]:https://twitter.com/eherrador
