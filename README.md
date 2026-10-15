# European Football Analytics Dashboard 

This is a data analytics project I built using PostgreSQL and Power BI. The goal was to create an interactive scouting tool to evaluate elite football players based on their on-pitch efficiency (goals, assists, minutes played) and their financial market value.

### Workflow
* **PostgreSQL:** Used for data storage, querying, and establishing the initial relational models.
* **Power BI:** Used for data visualization, cross-filtering, and advanced DAX modeling.

### Features
* **Data Modeling:** Fixed relationships to ensure accurate cross-filtering across all visuals.
* **Custom UX:** I avoided default Power BI templates. I implemented a Clean aesthetic, removed visual borders to reduce noise, and used a custom JSON theme file to force the dashboard to use the "Sansation" font and purple details to ensure a premier league design.
* **Dynamic Radar Chart with AI:** To visually represent a player's profile, I built a custom 5-point radar chart. This required creating a disconnected table for the axes. Getting the DAX SWITCH function to work and mathematically normalizing different scales (like goals per 90 vs. a 150M euro market value) was challenging. I used generative AI as a technical assistant to help me debug and finalize the complex DAX logic.
