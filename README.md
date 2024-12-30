# Sorting-Hub-Performance

### Sort Hub Performance

Evaluate the productivity of company Z's sorting hubs, specifically focusing on the performance of sort hubs in the East Malaysia region.  
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
  - Exclude all records associated with test shippers, test hubs, or tracking IDs that include the words "test".
  - Sort the output by sort hub name, date, and parcel size.
 
### Required Output Columns:

| Date       | Sort Hub Name     | Parcel Size   | Total Parcels   |  
|------------|-------------------|---------------|-----------------|  
| ...        | ...               | ...           | ...             |  

### Tables provided:
Four tables are provided in this analysis.

**HUBS**
| Name  | Type    | Description                                |
|-------|---------|--------------------------------------------------------|
| id    | INTEGER | A unique numeric identifier for each hub.              |
| name  | VARCHAR | The hub’s name.                                        |
| state | VARCHAR | The state where the hub is situated.                   |
| region| VARCHAR | The geographical region the hub serves.                |
| type  | VARCHAR | Indicates if the hub functions as a sort hub or a delivery hub. |

[`HUBS DATA`](https://github.com/TvlanS/Sorting-Hub-Performance/blob/main/2.0%20Data%20Sets/HUBS.csv)

**SHIPPER**
| Name     | Type    | Description                      |
|----------|---------|----------------------------------|
| id       | INTEGER | A unique numeric identifier for each shipper.|
| name     | VARCHAR | The shipper’s name.                          |
| category | VARCHAR | The type of industry the shipper is associated with. |

[`SHIPPER DATA`](https://github.com/TvlanS/Sorting-Hub-Performance/blob/main/2.0%20Data%20Sets/SHIPPER.csv)


**ORDERS**
| Name     | Type    | Description                      |
|----------|---------|----------------------------------|
| id       | INTEGER | A unique numeric identifier for each order.|
| tracking_id     | VARCHAR | A unique numeric identifier for each order. |
| status | VARCHAR | Order status. |
| shipper_id | INTEGER | A unique numeric identifier for each shipper.|
| parcel_size_id | INTEGER | Parcel size ranging from 0 to 5. |

[`ORDERS DATA`](https://github.com/TvlanS/Sorting-Hub-Performance/blob/main/2.0%20Data%20Sets/ORDERS.csv)

**SCANS**
| Name     | Type    | Description                      |
|----------|---------|----------------------------------|
| order_id       | INTEGER | A unique numeric identifier for each order.|
| hub_id     | INTEGER | A unique numeric identifier for each hub.   |
| scan_datetime | DATETIME | Parcel scan date and time. |

[`SCANS DATA`](https://github.com/TvlanS/Sorting-Hub-Performance/blob/main/2.0%20Data%20Sets/SCANS.csv)




