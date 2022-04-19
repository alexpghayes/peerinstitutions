# Integrated Postsecondary Education Data System (IPEDS) Peer Institution Data 2020-2010

Alex Hayes (@alexpghayes) pulled the data in this repository from <https://nces.ed.gov/ipeds/use-the-data> on 2022-04-19.

To access and pull peer institution data ("custom comparison group") yourself, follow these steps:

1. Visit <https://nces.ed.gov/ipeds/use-the-data>
2. Survey Data > Custom Data Files

Should get a pop-up to a data export wizard

- Select Institutions: EZ Group > All Institutions > Continue
- Select Variables: Institutional Characteristics > Directory information > Custom comparison group submitted by institution
- Output to your preferred format

You'll need to export data for each year separately. The data should export to a `.zip` containing the data and an HTML codebook. You can also export other information about each university and join it back to the original data later.

Raw exports from IPEDS are in the 20** folders. `ipeds.R` merges this data and dumps the codebooks/data dictionaries into `/data-raw/dictionaries`.
