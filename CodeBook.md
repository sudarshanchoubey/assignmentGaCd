##Quantitative variables

The following variable have been created using the following process:
* A prefix of timeDomain has been added in place of t for the time domain 
  signals which are part of test and training data sets.
* A prefix of FFT has been added in place of f for signals which have 
  been transformed using fast fourier transforms in the test and training data
  sets
* Means have been calculated for all the variables which were of type mean or 
  sd for each subject and activity.
* A prefix of MeanOf has been added to all these variables to improve readability.
  
MeanOftimeDomainBodyAcc.mean.X      
MeanOftimeDomainBodyAcc.mean.Y      
MeanOftimeDomainBodyAcc.mean.Z      
MeanOftimeDomainGravityAcc.mean.X   
MeanOftimeDomainGravityAcc.mean.Y   
MeanOftimeDomainGravityAcc.mean.Z   
MeanOftimeDomainBodyAccJerk.mean.X  
MeanOftimeDomainBodyAccJerk.mean.Y  
MeanOftimeDomainBodyAccJerk.mean.Z  
MeanOftimeDomainBodyGyro.mean.X     
MeanOftimeDomainBodyGyro.mean.Y     
MeanOftimeDomainBodyGyro.mean.Z     
MeanOftimeDomainBodyGyroJerk.mean.X 
MeanOftimeDomainBodyGyroJerk.mean.Y 
MeanOftimeDomainBodyGyroJerk.mean.Z 
MeanOftimeDomainBodyAccMag.mean     
MeanOftimeDomainGravityAccMag.mean  
MeanOftimeDomainBodyAccJerkMag.mean 
MeanOftimeDomainBodyGyroMag.mean    
MeanOftimeDomainBodyGyroJerkMag.mean
MeanOfFFTBodyAcc.mean.X             
MeanOfFFTBodyAcc.mean.Y             
MeanOfFFTBodyAcc.mean.Z             
MeanOfFFTBodyAccJerk.mean.X         
MeanOfFFTBodyAccJerk.mean.Y         
MeanOfFFTBodyAccJerk.mean.Z         
MeanOfFFTBodyGyro.mean.X            
MeanOfFFTBodyGyro.mean.Y            
MeanOfFFTBodyGyro.mean.Z            
MeanOfFFTBodyAccMag.mean            
MeanOfFFTBodyBodyAccJerkMag.mean    
MeanOfFFTBodyBodyGyroMag.mean       
MeanOfFFTBodyBodyGyroJerkMag.mean   
MeanOftimeDomainBodyAcc.std.X       
MeanOftimeDomainBodyAcc.std.Y       
MeanOftimeDomainBodyAcc.std.Z       
MeanOftimeDomainGravityAcc.std.X    
MeanOftimeDomainGravityAcc.std.Y    
MeanOftimeDomainGravityAcc.std.Z    
MeanOftimeDomainBodyAccJerk.std.X   
MeanOftimeDomainBodyAccJerk.std.Y   
MeanOftimeDomainBodyAccJerk.std.Z   
MeanOftimeDomainBodyGyro.std.X      
MeanOftimeDomainBodyGyro.std.Y      
MeanOftimeDomainBodyGyro.std.Z      
MeanOftimeDomainBodyGyroJerk.std.X  
MeanOftimeDomainBodyGyroJerk.std.Y  
MeanOftimeDomainBodyGyroJerk.std.Z  
MeanOftimeDomainBodyAccMag.std      
MeanOftimeDomainGravityAccMag.std   
MeanOftimeDomainBodyAccJerkMag.std  
MeanOftimeDomainBodyGyroMag.std     
MeanOftimeDomainBodyGyroJerkMag.std 
MeanOfFFTBodyAcc.std.X              
MeanOfFFTBodyAcc.std.Y              
MeanOfFFTBodyAcc.std.Z              
MeanOfFFTBodyAccJerk.std.X          
MeanOfFFTBodyAccJerk.std.Y          
MeanOfFFTBodyAccJerk.std.Z          
MeanOfFFTBodyGyro.std.X             
MeanOfFFTBodyGyro.std.Y             
MeanOfFFTBodyGyro.std.Z             
MeanOfFFTBodyAccMag.std             
MeanOfFFTBodyBodyAccJerkMag.std     
MeanOfFFTBodyBodyGyroMag.std        
MeanOfFFTBodyBodyGyroJerkMag.std    

##Identity variables

* subject: This denotes the subject id for which the means were calculated.                             

* activity: This denotes the activty for which the means were calculated.