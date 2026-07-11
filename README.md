# HR-Data-Analytics-Project1
Interactive HR Management Dashboard built in Excel with a relational SQL backend
 Project Summary
This project demonstrates an end-to-end data analysis pipeline, starting with a clean SQL database backend for employee master data management and culminating in an interactive Excel-based dashboard for strategic workforce insights. The solution provides actionable views on department volumes, salary metrics, joining activity, and key HR KPIs.


 Relational Database & Business Queries (SQL)
The backend is powered by a structured schema within a relational database. I designed the database table and authored production queries to answer key business questions:
*   Department-wise Headcount: Tracking total and active employees per department.
*   Compensation Metrics: Analyzing average salary by department to monitor budget and competitiveness.
*   Span of Control: Measuring the number of direct reports per manager.

Below is a preview of the queries running against a sample dataset on DB-Fiddle.com:

<img width="1130" height="522" alt="image" src="https://github.com/user-attachments/assets/ae9b8d6a-2856-4700-80aa-18375af0835c" />
<img width="1116" height="240" alt="image" src="https://github.com/user-attachments/assets/c62f2477-ad17-48e5-9c94-0e1772d1cb07" />
<img width="1104" height="187" alt="image" src="https://github.com/user-attachments/assets/925c406b-056d-44d5-b093-66314affe1df" />


 Interactive Executive Dashboard (Excel)
The raw data is synthesized into a corporate-ready, interactive frontend dashboard designed for real-time exploratory analysis. The dashboard features:
*   Dynamic KPI Card: Instally calculates the total current headcount based on user-selected filters.
*   Visualized Metrics: Four key charts show department breakdown, salary distribution, experience-salary correlation, and joining activity.
*   Synchronized Slicers: Allow filtering by location, gender, travel frequency, and more.

A view of the functional dashboard is shown below:

<img width="1025" height="445" alt="Screenshot 2026-07-11 182724" src="https://github.com/user-attachments/assets/91b49b6e-8f0d-407b-afe2-6e666782f650" />


*Key feature: The headcount KPI card dynamically updates. Notice how it shows only **1043** employees when the Business Travel slicer is filtered, rather than the flat raw data total.*

