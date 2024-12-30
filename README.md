# Sorting-Hub-Performance

### Sort Hub Productivity

Evaluate the productivity of company Z's sorting hubs, specifically focusing on the performance of sort hubs in the Malaysia region.  
A query is to be writen to calculate the total number of parcels processed at each sort hub in East Malaysia daily, categorized by parcel size, for the period from 1th Dec 2024 to 25th Dec 2024.

**Requirements:** 
- **Datetime format:** All datetime values are in UTC. Convert them to local time by adding 8 hours and display the results accordingly.  
- **Parcel size mapping:** The `orders.parcel_size_id` column determines the parcel size. Replace the `parcel_size_id` values with descriptive labels as follows:

| Parcel Size ID | Description |
|----------------|-------------|
| 0              | XXSMALL     |
| 1              | XSMALL      |
| 2              | MEDIUM      |
| 3              | LARGE       |
| 4              | XLARGE      |
| 5              | JUMBO       |

- **Guidelines:**
  - Count a parcel only once per day, even if it is scanned multiple times on the same day.
  - For parcels scanned across multiple days, count them separately for each day.
  - If a parcel is processed at multiple sort hubs, count it once for each hub.
  - Exclude all records associated with test shippers, test hubs, or tracking IDs that include the words "test" or "testing."
  - Sort the output by sort hub name, date, and parcel size.


### Required Output Columns:
| Date       | Sort Hub Name     | Parcel Size   | Total Parcels   |  
|------------|-------------------|---------------|-----------------|  
| ...        | ...               | ...           | ...             |  

