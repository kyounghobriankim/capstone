# capstone

Problem Statement:
As the world of Esports rises and more viewers are tuning into video game streamers, there is a major need for a fantasy league for professional gamers. What would the data model and design look like and how can we solve deep questions to predict upcoming Valorant competitions?



Reflection:
If there were more time, it would have been useful to get the more features to predict our score such as 'damage dealt per round'. This information is one of the features needed to calculate the total score. 

Score is calculated by a couple performances: 1 point for each damage dealt, kills depending on how much health they have, multi-kills, non-damaging assists such as abilities,  and rounds won. Because our data had not given us the damage dealt using guns nor abilities, we could not get a better score for our linear regression. Since this is a fantasy scoring linear regression, we do not need it to be in the feature to calculate the scores. To reduce the root mean squared error, it would be better for the model itself. In this instance I would not use it. When looking at the correlation heatmap graph, we are able to see how the negative impact the insufficient data impacts the overall data. 

Knowing if there were more time, there would be more improvements to be made. For example, the dataset could be more complete. Although the dataset was enough to work with, it did not have a feature that contributes to the score. Knowing that there is an API page, requests were made to gather the complete API JSON file, the page was not accessible. Another change to consider is the time series implementation. This is a suggestion for future to give a better prediction. Just like Fantasy football or fantasy basketball, the scores change during the game. So, to make the project more interactive, time series is needed.
