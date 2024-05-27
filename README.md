# Olympic_data_analysis

### introduction

The Olympics represent the pinnacle of international sports competition, bringing together athletes from around the globe to compete in a wide array of events. With over a century of rich history, the Olympics offer a treasure trove of data waiting to be analyzed. This project leverages SQL to explore and extract insights from 120 years of Olympic history, utilizing two extensive datasets: athletes and athlete_events.


### Dataset

The project utilized two primary datasets: athletes [atheletes.xls](https://github.com/Dewangaurav/Olympic_data_analysis/files/15456019/atheletes.xls) and athlete_events[athlete_events.xls](https://github.com/Dewangaurav/Olympic_data_analysis/files/15456024/athlete_events.xls) both of which provide comprehensive information about the athletes and events in the Olympic Games spanning 120 years.

### Tools Used

Microsoft SQL Server

#### Objective
The main objective of this project was to employ SQL for comprehensive data analysis to answer specific queries related to Olympic history. The goals included identifying top-performing teams and athletes, understanding medal distributions, and uncovering significant milestones and achievements within the dataset.


#### Dataset Description

**Athletes Dataset**
Description: This dataset contains detailed information about all athletes who have participated in the Olympic Games.
Columns:
id: Unique identifier for each athlete.
name: Full name of the athlete.
sex: Gender of the athlete (M for Male, F for Female).
age: Age of the athlete at the time of participation.
height: Height of the athlete in centimeters.
weight: Weight of the athlete in kilograms.
team: Name of the team (country) the athlete represents.
noc: National Olympic Committee (NOC) code representing the country.
games: Year and season of the Olympic Games (e.g., "2008 Summer").
year: Year of the Olympic Games.
season: Season of the Olympic Games (Summer or Winter).
city: Host city of the Olympic Games.
sport: Sport in which the athlete competed.
event: Specific event in which the athlete competed.
medal: Medal won by the athlete (Gold, Silver, Bronze, or NA if no medal was won).


**Athlete Events Dataset**
Description: This dataset contains detailed information about all events in which athletes have competed in the Olympic Games.

id: Unique identifier for each entry, corresponding to the id column in the athletes dataset.
name: Full name of the athlete.
sex: Gender of the athlete (M for Male, F for Female).
age: Age of the athlete at the time of participation.
height: Height of the athlete in centimeters.
weight: Weight of the athlete in kilograms.
team: Name of the team (country) the athlete represents.
noc: National Olympic Committee (NOC) code representing the country.
games: Year and season of the Olympic Games (e.g., "2008 Summer").
year: Year of the Olympic Games.
season: Season of the Olympic Games (Summer or Winter).
city: Host city of the Olympic Games.
sport: Sport in which the athlete competed.
event: Specific event in which the athlete competed.
medal: Medal won by the athlete (Gold, Silver, Bronze, or NA if no medal was won).


#### Key Analyses
1. **Team with Maximum Gold Medals:**
   - Identified the team that has won the highest number of gold medals over the years.

2. **Silver Medals Analysis by Team:**
   - For each team, calculated the total number of silver medals and determined the year in which they won the maximum number of silver medals.

3. **Top Gold Medalist (Gold Only):**
   - Found the player who has won the maximum number of gold medals, ensuring they have never won silver or bronze medals.

4. **Yearly Gold Medal Leaders:**
   - For each year, identified the player(s) who won the maximum number of gold medals, including handling ties by listing names comma-separated.

5. **India's First Medals:**
   - Determined the events and years in which India won its first gold, silver, and bronze medals.

6. **Dual Season Gold Medalists:**
   - Found players who have won gold medals in both Summer and Winter Olympics.

7. **Triple Medal Winners:**
   - Identified players who won gold, silver, and bronze medals in a single Olympic event and listed the year.

8. **Consecutive Gold Medalists:**
   - Highlighted players who have won gold medals in the same event in three consecutive Summer Olympics starting from 2000 onwards.

#### Conclusion
This project successfully demonstrated the power of SQL in analyzing large historical datasets. By extracting and interpreting complex data, we were able to uncover significant insights and trends within Olympic history. This analysis not only highlights exceptional athletic achievements but also provides a deeper understanding of the evolution and impact of the Olympics over time. The findings from this project can serve as a foundation for further research and analysis in sports analytics and history.

**Note:** The analysis queries provided in this project are written in **Microsoft SQL** database and can be executed on any SQL database management system containing the credit card transaction dataset.
