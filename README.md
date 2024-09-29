
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dspacer

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![License:
MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Project Status: WIP – Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
<!-- badges: end -->

The goal of dspacer is to support access to the [DSpace REST
API](https://github.com/DSpace/DSpace/releases/tag/dspace-8.0).

## Installation

You can install the development version of dspacer like so:

``` r
pak::pkg_install("elipousson/dspacer")
```

## Example

``` r
library(dspacer)
```

These are basic examples of three public end points that do not require
authentication:

``` r
ds_collections(
  "https://jscholarship.library.jhu.edu/server/api"
)
#> $`_embedded`
#> $`_embedded`$collections
#>                                      id                                 uuid
#> 1  718b69ac-0a0d-4e4c-b02b-41c518ea46f9 718b69ac-0a0d-4e4c-b02b-41c518ea46f9
#> 2  0be184ac-e9c8-40d4-91c4-7ca27c1fd7f9 0be184ac-e9c8-40d4-91c4-7ca27c1fd7f9
#> 3  e13924d3-e26f-43a7-886a-21928fcc5100 e13924d3-e26f-43a7-886a-21928fcc5100
#> 4  6b1ef4a3-ceda-4665-8ed2-948ca236ffb6 6b1ef4a3-ceda-4665-8ed2-948ca236ffb6
#> 5  93cd1988-aedd-43dd-a564-8ea02aa759dc 93cd1988-aedd-43dd-a564-8ea02aa759dc
#> 6  6d28dcd6-9039-4fa1-b0c7-aa768609e638 6d28dcd6-9039-4fa1-b0c7-aa768609e638
#> 7  de756986-f530-475b-97bb-a6fff37e1394 de756986-f530-475b-97bb-a6fff37e1394
#> 8  4fbd8214-81dc-4014-8ffb-a43bfd37e3c9 4fbd8214-81dc-4014-8ffb-a43bfd37e3c9
#> 9  6c91955f-2cee-45bb-91c8-0c195100d5a9 6c91955f-2cee-45bb-91c8-0c195100d5a9
#> 10 8b2522dd-5674-4c83-a9b6-1bb2b51501a2 8b2522dd-5674-4c83-a9b6-1bb2b51501a2
#> 11 d8ac5a94-123d-4b5a-a99e-11c3f5b7095e d8ac5a94-123d-4b5a-a99e-11c3f5b7095e
#> 12 7e692697-d553-4887-8404-61a0821e42b8 7e692697-d553-4887-8404-61a0821e42b8
#> 13 4c0bf61d-a52e-478a-a85f-1b9fab18bdb9 4c0bf61d-a52e-478a-a85f-1b9fab18bdb9
#> 14 dec32558-b1f0-4775-b126-8f31c4f2bb9a dec32558-b1f0-4775-b126-8f31c4f2bb9a
#> 15 55766e6c-a72b-4bd8-bcba-852df91aa6f9 55766e6c-a72b-4bd8-bcba-852df91aa6f9
#> 16 c9637c6d-6520-48f8-8425-dc72a170dd80 c9637c6d-6520-48f8-8425-dc72a170dd80
#> 17 af7dd14c-4782-477a-bfc0-bec27e56605f af7dd14c-4782-477a-bfc0-bec27e56605f
#> 18 f3422598-157d-40fc-a975-8394b01e9d1e f3422598-157d-40fc-a975-8394b01e9d1e
#> 19 aa1e8f29-8964-4727-8225-a2a17265afc3 aa1e8f29-8964-4727-8225-a2a17265afc3
#> 20 ae3d6fe2-e042-49c2-a2c8-aaaf0a07f225 ae3d6fe2-e042-49c2-a2c8-aaaf0a07f225
#>                                                                                              name
#> 1                                                                            2012/2013 Recipients
#> 2                                                                            2013/2014 Recipients
#> 3                                                     2019 Johns Hopkins Libraries Staff Assembly
#> 4                                                     2020 Johns Hopkins Libraries Staff Assembly
#> 5                                                     2021 Johns Hopkins Libraries Staff Assembly
#> 6  Aerial Photography - Baltimore (1924-1925, 1927, 1937-1938, 1948, 1952-1953, 1957, 1964, 1972)
#> 7                                                     Aerial Photography – Ocean City (1952-1964)
#> 8                                                     Aerial Photography- Other Maryland Counties
#> 9                                                                             American Capitalism
#> 10                                                     American Prison Writing Archive collection
#> 11                                                                               Annual Symposium
#> 12                                                                      Baltimore City Sheet Maps
#> 13                                                                    Baltimore County Sheet Maps
#> 14                                                                    Baltimore Development Plans
#> 15                                                                 Baltimore Historic Census Data
#> 16                                                        Baltimore Queer Oral History Collection
#> 17                                                                           Birchbark manuscript
#> 18                                                                    Black Student Union records
#> 19                    Bob and Frank Cicero oral histories about Globe Poster Printing Corporation
#> 20                                                                                          Books
#>          handle
#> 1  1774.2/36431
#> 2  1774.2/36558
#> 3  1774.2/61377
#> 4  1774.2/62382
#> 5  1774.2/63896
#> 6  1774.2/32749
#> 7  1774.2/35704
#> 8  1774.2/36422
#> 9  1774.2/40421
#> 10 1774.2/68143
#> 11 1774.2/33503
#> 12 1774.2/32588
#> 13 1774.2/32750
#> 14 1774.2/33096
#> 15 1774.2/35404
#> 16 1774.2/66949
#> 17 1774.2/37744
#> 18 1774.2/61241
#> 19 1774.2/44563
#> 20 1774.2/63855
#>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    metadata.dc.description
#> 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               This collection contains research papers that were sponsored by the JHU Libraries Open Access Fund in the 2012/2013 academic year. For more information about the fund, please visit <a href="http://guides.library.jhu.edu/content.php?pid=315747&sid=2802982">webpage</a>, NA, NA, -1, 0
#> 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     NULL
#> 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               The June 3, 2019 Hopkins Libraries Staff Assembly was held at the George Peabody Library. The event was titled Open Access Across the University. Included in this collection are the agenda for the day and slides from some of the talks., NA, NA, -1, 0
#> 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     NULL
#> 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     NULL
#> 6  This collection includes sets of downloadable JPEG and TIFF or JP2000 images of aerial photography.  For 1937-1938 and 1952-1953, the images were produced from 9" x 9” print aerial photographs of Baltimore City and Baltimore County. The original print photographs can be found at the Maryland Geological Survey (MGS). This scanning project was a joint initiative of the MGS and the Eisenhower Library. As the MGS collection of 1937-1938 aerial photography is incomplete, we acquiring supplemental images from National Archives and Records Administration to fill in the missing gaps.  \r\n\r\n<p>The photography was originally produced for the United States Agricultural Stabilization and Conservation Service (ASCS) for use in crop and farm acreage analysis. ASCS contracted for aerial flights on five to ten year intervals for those counties with a predominate economic base in agriculture.</p>\r\n\r\n<p>The 1964 Baltimore City aerial photography was produced from oversize, mylar based, images held by the Baltimore City Department of Planning.</p>\r\n\r\n<p>For more information, contact Data Services at <A HREF="mailto:dataservices@jhu.edu">dataservices@jhu.edu.</A></p>, NA, NA, -1, 0
#> 7                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     NULL
#> 8                                                                                   This collection of aerial photo index mosaics provides a visual summary of the 1937-1938 and 1951-1952 aerial photography produced for the United States Agricultural Stabilization and Conservation Service (ASCS) for use in crop and farm acreage analysis. The Sheridan Libraries do NOT have print copies or images of individual photos listed on each index. Copies of the individual photos can be purchased by contacting the National Archives and Records Administration, Cartographic and Architectural Section  http://www.archives.gov/publications/general-info-leaflets/26-cartographic.html#aerial2. An incomplete print collection of the photographs is available for on-site consultation at the Maryland Geological Survey (MGS)  http://www.mgs.md.gov/. Providing these index sheet images is a joint initiative of the MGS and the Eisenhower Library. For our holdings of aerial photography of Baltimore City and County see https://jscholarship.library.jhu.edu/handle/1774.2/327.\r\n<p>For more information, contact Data Services at <A HREF="mailto:dataservices@jhu.edu">dataservices@jhu.edu.</A></p>, NA, NA, -1, 0
#> 9                                                                                                                                                                                                                                                                                                                                                                       <p>\r\nWith support from the Ewing Marion Kauffman Foundation, the Johns Hopkins University has launched a new Seminar on the History of American Capitalism.  The Seminar meets between six and ten times each year to discuss emerging research in the field. The gatherings aim to create an interdisciplinary environment for scholars across a range of historical subfields to share and discuss new work on the economic, cultural, and intellectual history of a market society, its political context, and the role of entrepreneurship in the American past and present. Many of the visitors contribute to our ongoing working paper series, and the program will host a conference during the 2016–2017 academic year. If you have questions about the program, please contact Angus Burgin, Christy Chapin, or Louis Galambos.\r\n</p>, NA, NA, -1, 0
#> 10                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    NULL
#> 11                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    NULL
#> 12                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        This collection includes downloadable JPEG images of selected, printed maps found in the GIS and Data Services map collection.  New maps, not covered by copyright, will be added to this collection as we scan additional map sheets. Our future plans call for including TIFF or JP2 images of each map and providing tools to pan and zoom in and out of each map image. <p>For more information, contact Data Services at <A HREF="mailto:dataservices@jhu.edu">dataservices@jhu.edu.</A></p>, NA, NA, -1, 0
#> 13                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                WORK  IN PROGRESS -- MAP IMAGES NOT YET AVAILABLE.\r\nThis collection will include downloadable JPEG and TIFF images of selected, printed maps found in the Government Publications/Maps/Law collection. Our future plans call for adding online tools to pan and zoom in and out of each map image.<p>For more information, contact Data Services at <A HREF="mailto:dataservices@jhu.edu">dataservices@jhu.edu.</A></p>, NA, NA, -1, 0
#> 14                                                                                                                                                                                                                                                                                                        <p>Over the decades, Baltimore City and the Baltimore Regional Planning Council have created plans that address various urban issues such as land use, transportation, and development. The resulting plans, and their proposed solutions, provide the reader with useful historical benchmarks that trace the redevelopment of Baltimore City and the larger region.</p>\r\n\r\n<p>This collection includes images of selected development plans from the Government Publications/Maps/Law collection. Our goal is to including here those plans that have a significant number of maps. For the most part, the individual maps in each development plan are rarely cataloged or indexed separately. When completed, this collection will cover plans from 1926 to the present.</p>\r\n\r\n<p>For more information, contact Data Services at <A HREF="mailto:dataservices@jhu.edu">dataservices@jhu.edu.</A></p>, NA, NA, -1, 0
#> 15                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    NULL
#> 16                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    NULL
#> 17                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    <p>Birchbark manuscript volume, or "rcaka", MSB.83. It contains a selection of passages regarding ritual practices including the mathapratisthapana (manual for setting up a school or monastery), ritual inauguration procedures, and the agraharapratistha (manual for inaugurating a Brahmin enclave of houses that have been given by a king). For more information about the item from which this digital content was derived, please visit https://catalyst.library.jhu.edu/catalog/bib_2441382.</p>\r\n\r\n<p>Language: Sanskrit</p>\r\n\r\n<p>The conservation and digitization of this project was made possible through the support from the Friends of the Johns Hopkins Libraries and through individual philanthropy</p>, NA, NA, -1, 0
#> 18                                                                                                                                                                                                                                                                                                                                                          <p>The Johns Hopkins Black Student Union (BSU) was founded in April of 1968, shortly after the assassination of Martin Luther King, Jr. and the riots which followed in Baltimore City. The club sponsors social events and lectures, participates in community service activities such as tutoring disadvantaged children, works to promote unity among African Americans, and works to improve the overall climate for African American students at Hopkins. The records of the Black Student Union span the years 1972 to 1997, with the bulk dating from 1992 to 1996.</p><p>These are digitized items from the Black Student Union records, RG.14.195. For more information about this collection, please visit <a href="http://aspace.library.jhu.edu/repositories/3/resources/1079">http://aspace.library.jhu.edu/repositories/3/resources/1079.</a></p>, NA, NA, -1, 0
#> 19                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          Video-recorded oral history interviews (and accompanying transcripts) with Bob and Frank Cicero, who ran Globe Poster Printing Corporation from the 1970s until its closure in the late 2000s. For more information about the collection from which this digital content was derived, please visit http://aspace.library.jhu.edu/repositories/3/resources/1238., NA, NA, -1, 0
#> 20                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    NULL
#>                                                 metadata.dc.identifier.uri
#> 1  https://jscholarship.library.jhu.edu/handle/1774.2/36431, NA, NA, -1, 0
#> 2  https://jscholarship.library.jhu.edu/handle/1774.2/36558, NA, NA, -1, 0
#> 3  https://jscholarship.library.jhu.edu/handle/1774.2/61377, NA, NA, -1, 0
#> 4  https://jscholarship.library.jhu.edu/handle/1774.2/62382, NA, NA, -1, 0
#> 5  https://jscholarship.library.jhu.edu/handle/1774.2/63896, NA, NA, -1, 0
#> 6  https://jscholarship.library.jhu.edu/handle/1774.2/32749, NA, NA, -1, 0
#> 7  https://jscholarship.library.jhu.edu/handle/1774.2/35704, NA, NA, -1, 0
#> 8  https://jscholarship.library.jhu.edu/handle/1774.2/36422, NA, NA, -1, 0
#> 9  https://jscholarship.library.jhu.edu/handle/1774.2/40421, NA, NA, -1, 0
#> 10 https://jscholarship.library.jhu.edu/handle/1774.2/68143, NA, NA, -1, 0
#> 11 https://jscholarship.library.jhu.edu/handle/1774.2/33503, NA, NA, -1, 0
#> 12 https://jscholarship.library.jhu.edu/handle/1774.2/32588, NA, NA, -1, 0
#> 13 https://jscholarship.library.jhu.edu/handle/1774.2/32750, NA, NA, -1, 0
#> 14 https://jscholarship.library.jhu.edu/handle/1774.2/33096, NA, NA, -1, 0
#> 15 https://jscholarship.library.jhu.edu/handle/1774.2/35404, NA, NA, -1, 0
#> 16 https://jscholarship.library.jhu.edu/handle/1774.2/66949, NA, NA, -1, 0
#> 17 https://jscholarship.library.jhu.edu/handle/1774.2/37744, NA, NA, -1, 0
#> 18 https://jscholarship.library.jhu.edu/handle/1774.2/61241, NA, NA, -1, 0
#> 19 https://jscholarship.library.jhu.edu/handle/1774.2/44563, NA, NA, -1, 0
#> 20 https://jscholarship.library.jhu.edu/handle/1774.2/63855, NA, NA, -1, 0
#>                                                                                                metadata.dc.title
#> 1                                                                            2012/2013 Recipients, NA, NA, -1, 0
#> 2                                                                            2013/2014 Recipients, NA, NA, -1, 0
#> 3                                                     2019 Johns Hopkins Libraries Staff Assembly, NA, NA, -1, 0
#> 4                                                     2020 Johns Hopkins Libraries Staff Assembly, NA, NA, -1, 0
#> 5                                                     2021 Johns Hopkins Libraries Staff Assembly, NA, NA, -1, 0
#> 6  Aerial Photography - Baltimore (1924-1925, 1927, 1937-1938, 1948, 1952-1953, 1957, 1964, 1972), NA, NA, -1, 0
#> 7                                                     Aerial Photography – Ocean City (1952-1964), NA, NA, -1, 0
#> 8                                                     Aerial Photography- Other Maryland Counties, NA, NA, -1, 0
#> 9                                                                             American Capitalism, NA, NA, -1, 0
#> 10                                                     American Prison Writing Archive collection, NA, NA, -1, 0
#> 11                                                                               Annual Symposium, NA, NA, -1, 0
#> 12                                                                      Baltimore City Sheet Maps, NA, NA, -1, 0
#> 13                                                                    Baltimore County Sheet Maps, NA, NA, -1, 0
#> 14                                                                    Baltimore Development Plans, NA, NA, -1, 0
#> 15                                                                 Baltimore Historic Census Data, NA, NA, -1, 0
#> 16                                                        Baltimore Queer Oral History Collection, NA, NA, -1, 0
#> 17                                                                           Birchbark manuscript, NA, NA, -1, 0
#> 18                                                                    Black Student Union records, NA, NA, -1, 0
#> 19                    Bob and Frank Cicero oral histories about Globe Poster Printing Corporation, NA, NA, -1, 0
#> 20                                                                                          Books, NA, NA, -1, 0
#>                                                                                                                                                                                 metadata.dc.description.abstract
#> 1                                                                                                                                                                                                           NULL
#> 2                                                                                                                                                                                                           NULL
#> 3                                                                                                                                                               Open Access Across the University, NA, NA, -1, 0
#> 4                                    This collection contains content shared at the June 8, 2020, annual Johns Hopkins Libraries Staff Assembly. COVID-19 restrictions made this a virtual event., NA, NA, -1, 0
#> 5                                    This collection contains content shared at the June 7, 2021, annual Johns Hopkins Libraries Staff Assembly. COVID-19 restrictions made this a virtual event., NA, NA, -1, 0
#> 6                                                                                                                                                                              Aerial Photography, NA, NA, -1, 0
#> 7                                                                                                                                                                                                           NULL
#> 8                                                                                                                                                                                                           NULL
#> 9                                                                                                                                                                                                           NULL
#> 10                                                                                                                                                                                                          NULL
#> 11                                                                                                                                                                                                          NULL
#> 12                                                                                                                                                                      Baltimore City Sheet Maps, NA, NA, -1, 0
#> 13                                                                                                                                                                    Baltimore County Sheet Maps, NA, NA, -1, 0
#> 14                                                                                                                                                                    Baltimore Development Plans, NA, NA, -1, 0
#> 15                                                                                                                                                                                                          NULL
#> 16                                                                                                                                                                                                          NULL
#> 17                                                                                                                                                  Digital copy of Birchbark manuscript, MSB 83., NA, NA, -1, 0
#> 18                                                                                              Digital copies of the Johns Hopkins Black Student Union records, spanning the years 1972 to 1997., NA, NA, -1, 0
#> 19 Video-recorded oral history interviews (and accompanying transcripts) with Bob and Frank Cicero, who ran Globe Poster Printing Corporation from the 1970s until its closure in the late 2000s., NA, NA, -1, 0
#> 20                                                                                                                                                                                                          NULL
#>    archivedItemsCount       type
#> 1                  -1 collection
#> 2                  -1 collection
#> 3                  -1 collection
#> 4                  -1 collection
#> 5                  -1 collection
#> 6                  -1 collection
#> 7                  -1 collection
#> 8                  -1 collection
#> 9                  -1 collection
#> 10                 -1 collection
#> 11                 -1 collection
#> 12                 -1 collection
#> 13                 -1 collection
#> 14                 -1 collection
#> 15                 -1 collection
#> 16                 -1 collection
#> 17                 -1 collection
#> 18                 -1 collection
#> 19                 -1 collection
#> 20                 -1 collection
#>                                                                                                        _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/collections/718b69ac-0a0d-4e4c-b02b-41c518ea46f9/harvester
#> 2  https://jscholarship.library.jhu.edu/server/api/core/collections/0be184ac-e9c8-40d4-91c4-7ca27c1fd7f9/harvester
#> 3  https://jscholarship.library.jhu.edu/server/api/core/collections/e13924d3-e26f-43a7-886a-21928fcc5100/harvester
#> 4  https://jscholarship.library.jhu.edu/server/api/core/collections/6b1ef4a3-ceda-4665-8ed2-948ca236ffb6/harvester
#> 5  https://jscholarship.library.jhu.edu/server/api/core/collections/93cd1988-aedd-43dd-a564-8ea02aa759dc/harvester
#> 6  https://jscholarship.library.jhu.edu/server/api/core/collections/6d28dcd6-9039-4fa1-b0c7-aa768609e638/harvester
#> 7  https://jscholarship.library.jhu.edu/server/api/core/collections/de756986-f530-475b-97bb-a6fff37e1394/harvester
#> 8  https://jscholarship.library.jhu.edu/server/api/core/collections/4fbd8214-81dc-4014-8ffb-a43bfd37e3c9/harvester
#> 9  https://jscholarship.library.jhu.edu/server/api/core/collections/6c91955f-2cee-45bb-91c8-0c195100d5a9/harvester
#> 10 https://jscholarship.library.jhu.edu/server/api/core/collections/8b2522dd-5674-4c83-a9b6-1bb2b51501a2/harvester
#> 11 https://jscholarship.library.jhu.edu/server/api/core/collections/d8ac5a94-123d-4b5a-a99e-11c3f5b7095e/harvester
#> 12 https://jscholarship.library.jhu.edu/server/api/core/collections/7e692697-d553-4887-8404-61a0821e42b8/harvester
#> 13 https://jscholarship.library.jhu.edu/server/api/core/collections/4c0bf61d-a52e-478a-a85f-1b9fab18bdb9/harvester
#> 14 https://jscholarship.library.jhu.edu/server/api/core/collections/dec32558-b1f0-4775-b126-8f31c4f2bb9a/harvester
#> 15 https://jscholarship.library.jhu.edu/server/api/core/collections/55766e6c-a72b-4bd8-bcba-852df91aa6f9/harvester
#> 16 https://jscholarship.library.jhu.edu/server/api/core/collections/c9637c6d-6520-48f8-8425-dc72a170dd80/harvester
#> 17 https://jscholarship.library.jhu.edu/server/api/core/collections/af7dd14c-4782-477a-bfc0-bec27e56605f/harvester
#> 18 https://jscholarship.library.jhu.edu/server/api/core/collections/f3422598-157d-40fc-a975-8394b01e9d1e/harvester
#> 19 https://jscholarship.library.jhu.edu/server/api/core/collections/aa1e8f29-8964-4727-8225-a2a17265afc3/harvester
#> 20 https://jscholarship.library.jhu.edu/server/api/core/collections/ae3d6fe2-e042-49c2-a2c8-aaaf0a07f225/harvester
#>                                                                                                           _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/collections/718b69ac-0a0d-4e4c-b02b-41c518ea46f9/itemtemplate
#> 2  https://jscholarship.library.jhu.edu/server/api/core/collections/0be184ac-e9c8-40d4-91c4-7ca27c1fd7f9/itemtemplate
#> 3  https://jscholarship.library.jhu.edu/server/api/core/collections/e13924d3-e26f-43a7-886a-21928fcc5100/itemtemplate
#> 4  https://jscholarship.library.jhu.edu/server/api/core/collections/6b1ef4a3-ceda-4665-8ed2-948ca236ffb6/itemtemplate
#> 5  https://jscholarship.library.jhu.edu/server/api/core/collections/93cd1988-aedd-43dd-a564-8ea02aa759dc/itemtemplate
#> 6  https://jscholarship.library.jhu.edu/server/api/core/collections/6d28dcd6-9039-4fa1-b0c7-aa768609e638/itemtemplate
#> 7  https://jscholarship.library.jhu.edu/server/api/core/collections/de756986-f530-475b-97bb-a6fff37e1394/itemtemplate
#> 8  https://jscholarship.library.jhu.edu/server/api/core/collections/4fbd8214-81dc-4014-8ffb-a43bfd37e3c9/itemtemplate
#> 9  https://jscholarship.library.jhu.edu/server/api/core/collections/6c91955f-2cee-45bb-91c8-0c195100d5a9/itemtemplate
#> 10 https://jscholarship.library.jhu.edu/server/api/core/collections/8b2522dd-5674-4c83-a9b6-1bb2b51501a2/itemtemplate
#> 11 https://jscholarship.library.jhu.edu/server/api/core/collections/d8ac5a94-123d-4b5a-a99e-11c3f5b7095e/itemtemplate
#> 12 https://jscholarship.library.jhu.edu/server/api/core/collections/7e692697-d553-4887-8404-61a0821e42b8/itemtemplate
#> 13 https://jscholarship.library.jhu.edu/server/api/core/collections/4c0bf61d-a52e-478a-a85f-1b9fab18bdb9/itemtemplate
#> 14 https://jscholarship.library.jhu.edu/server/api/core/collections/dec32558-b1f0-4775-b126-8f31c4f2bb9a/itemtemplate
#> 15 https://jscholarship.library.jhu.edu/server/api/core/collections/55766e6c-a72b-4bd8-bcba-852df91aa6f9/itemtemplate
#> 16 https://jscholarship.library.jhu.edu/server/api/core/collections/c9637c6d-6520-48f8-8425-dc72a170dd80/itemtemplate
#> 17 https://jscholarship.library.jhu.edu/server/api/core/collections/af7dd14c-4782-477a-bfc0-bec27e56605f/itemtemplate
#> 18 https://jscholarship.library.jhu.edu/server/api/core/collections/f3422598-157d-40fc-a975-8394b01e9d1e/itemtemplate
#> 19 https://jscholarship.library.jhu.edu/server/api/core/collections/aa1e8f29-8964-4727-8225-a2a17265afc3/itemtemplate
#> 20 https://jscholarship.library.jhu.edu/server/api/core/collections/ae3d6fe2-e042-49c2-a2c8-aaaf0a07f225/itemtemplate
#>                                                                                                      _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/collections/718b69ac-0a0d-4e4c-b02b-41c518ea46f9/license
#> 2  https://jscholarship.library.jhu.edu/server/api/core/collections/0be184ac-e9c8-40d4-91c4-7ca27c1fd7f9/license
#> 3  https://jscholarship.library.jhu.edu/server/api/core/collections/e13924d3-e26f-43a7-886a-21928fcc5100/license
#> 4  https://jscholarship.library.jhu.edu/server/api/core/collections/6b1ef4a3-ceda-4665-8ed2-948ca236ffb6/license
#> 5  https://jscholarship.library.jhu.edu/server/api/core/collections/93cd1988-aedd-43dd-a564-8ea02aa759dc/license
#> 6  https://jscholarship.library.jhu.edu/server/api/core/collections/6d28dcd6-9039-4fa1-b0c7-aa768609e638/license
#> 7  https://jscholarship.library.jhu.edu/server/api/core/collections/de756986-f530-475b-97bb-a6fff37e1394/license
#> 8  https://jscholarship.library.jhu.edu/server/api/core/collections/4fbd8214-81dc-4014-8ffb-a43bfd37e3c9/license
#> 9  https://jscholarship.library.jhu.edu/server/api/core/collections/6c91955f-2cee-45bb-91c8-0c195100d5a9/license
#> 10 https://jscholarship.library.jhu.edu/server/api/core/collections/8b2522dd-5674-4c83-a9b6-1bb2b51501a2/license
#> 11 https://jscholarship.library.jhu.edu/server/api/core/collections/d8ac5a94-123d-4b5a-a99e-11c3f5b7095e/license
#> 12 https://jscholarship.library.jhu.edu/server/api/core/collections/7e692697-d553-4887-8404-61a0821e42b8/license
#> 13 https://jscholarship.library.jhu.edu/server/api/core/collections/4c0bf61d-a52e-478a-a85f-1b9fab18bdb9/license
#> 14 https://jscholarship.library.jhu.edu/server/api/core/collections/dec32558-b1f0-4775-b126-8f31c4f2bb9a/license
#> 15 https://jscholarship.library.jhu.edu/server/api/core/collections/55766e6c-a72b-4bd8-bcba-852df91aa6f9/license
#> 16 https://jscholarship.library.jhu.edu/server/api/core/collections/c9637c6d-6520-48f8-8425-dc72a170dd80/license
#> 17 https://jscholarship.library.jhu.edu/server/api/core/collections/af7dd14c-4782-477a-bfc0-bec27e56605f/license
#> 18 https://jscholarship.library.jhu.edu/server/api/core/collections/f3422598-157d-40fc-a975-8394b01e9d1e/license
#> 19 https://jscholarship.library.jhu.edu/server/api/core/collections/aa1e8f29-8964-4727-8225-a2a17265afc3/license
#> 20 https://jscholarship.library.jhu.edu/server/api/core/collections/ae3d6fe2-e042-49c2-a2c8-aaaf0a07f225/license
#>                                                                                                   _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/collections/718b69ac-0a0d-4e4c-b02b-41c518ea46f9/logo
#> 2  https://jscholarship.library.jhu.edu/server/api/core/collections/0be184ac-e9c8-40d4-91c4-7ca27c1fd7f9/logo
#> 3  https://jscholarship.library.jhu.edu/server/api/core/collections/e13924d3-e26f-43a7-886a-21928fcc5100/logo
#> 4  https://jscholarship.library.jhu.edu/server/api/core/collections/6b1ef4a3-ceda-4665-8ed2-948ca236ffb6/logo
#> 5  https://jscholarship.library.jhu.edu/server/api/core/collections/93cd1988-aedd-43dd-a564-8ea02aa759dc/logo
#> 6  https://jscholarship.library.jhu.edu/server/api/core/collections/6d28dcd6-9039-4fa1-b0c7-aa768609e638/logo
#> 7  https://jscholarship.library.jhu.edu/server/api/core/collections/de756986-f530-475b-97bb-a6fff37e1394/logo
#> 8  https://jscholarship.library.jhu.edu/server/api/core/collections/4fbd8214-81dc-4014-8ffb-a43bfd37e3c9/logo
#> 9  https://jscholarship.library.jhu.edu/server/api/core/collections/6c91955f-2cee-45bb-91c8-0c195100d5a9/logo
#> 10 https://jscholarship.library.jhu.edu/server/api/core/collections/8b2522dd-5674-4c83-a9b6-1bb2b51501a2/logo
#> 11 https://jscholarship.library.jhu.edu/server/api/core/collections/d8ac5a94-123d-4b5a-a99e-11c3f5b7095e/logo
#> 12 https://jscholarship.library.jhu.edu/server/api/core/collections/7e692697-d553-4887-8404-61a0821e42b8/logo
#> 13 https://jscholarship.library.jhu.edu/server/api/core/collections/4c0bf61d-a52e-478a-a85f-1b9fab18bdb9/logo
#> 14 https://jscholarship.library.jhu.edu/server/api/core/collections/dec32558-b1f0-4775-b126-8f31c4f2bb9a/logo
#> 15 https://jscholarship.library.jhu.edu/server/api/core/collections/55766e6c-a72b-4bd8-bcba-852df91aa6f9/logo
#> 16 https://jscholarship.library.jhu.edu/server/api/core/collections/c9637c6d-6520-48f8-8425-dc72a170dd80/logo
#> 17 https://jscholarship.library.jhu.edu/server/api/core/collections/af7dd14c-4782-477a-bfc0-bec27e56605f/logo
#> 18 https://jscholarship.library.jhu.edu/server/api/core/collections/f3422598-157d-40fc-a975-8394b01e9d1e/logo
#> 19 https://jscholarship.library.jhu.edu/server/api/core/collections/aa1e8f29-8964-4727-8225-a2a17265afc3/logo
#> 20 https://jscholarship.library.jhu.edu/server/api/core/collections/ae3d6fe2-e042-49c2-a2c8-aaaf0a07f225/logo
#>                                                                                                          _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/collections/718b69ac-0a0d-4e4c-b02b-41c518ea46f9/mappedItems
#> 2  https://jscholarship.library.jhu.edu/server/api/core/collections/0be184ac-e9c8-40d4-91c4-7ca27c1fd7f9/mappedItems
#> 3  https://jscholarship.library.jhu.edu/server/api/core/collections/e13924d3-e26f-43a7-886a-21928fcc5100/mappedItems
#> 4  https://jscholarship.library.jhu.edu/server/api/core/collections/6b1ef4a3-ceda-4665-8ed2-948ca236ffb6/mappedItems
#> 5  https://jscholarship.library.jhu.edu/server/api/core/collections/93cd1988-aedd-43dd-a564-8ea02aa759dc/mappedItems
#> 6  https://jscholarship.library.jhu.edu/server/api/core/collections/6d28dcd6-9039-4fa1-b0c7-aa768609e638/mappedItems
#> 7  https://jscholarship.library.jhu.edu/server/api/core/collections/de756986-f530-475b-97bb-a6fff37e1394/mappedItems
#> 8  https://jscholarship.library.jhu.edu/server/api/core/collections/4fbd8214-81dc-4014-8ffb-a43bfd37e3c9/mappedItems
#> 9  https://jscholarship.library.jhu.edu/server/api/core/collections/6c91955f-2cee-45bb-91c8-0c195100d5a9/mappedItems
#> 10 https://jscholarship.library.jhu.edu/server/api/core/collections/8b2522dd-5674-4c83-a9b6-1bb2b51501a2/mappedItems
#> 11 https://jscholarship.library.jhu.edu/server/api/core/collections/d8ac5a94-123d-4b5a-a99e-11c3f5b7095e/mappedItems
#> 12 https://jscholarship.library.jhu.edu/server/api/core/collections/7e692697-d553-4887-8404-61a0821e42b8/mappedItems
#> 13 https://jscholarship.library.jhu.edu/server/api/core/collections/4c0bf61d-a52e-478a-a85f-1b9fab18bdb9/mappedItems
#> 14 https://jscholarship.library.jhu.edu/server/api/core/collections/dec32558-b1f0-4775-b126-8f31c4f2bb9a/mappedItems
#> 15 https://jscholarship.library.jhu.edu/server/api/core/collections/55766e6c-a72b-4bd8-bcba-852df91aa6f9/mappedItems
#> 16 https://jscholarship.library.jhu.edu/server/api/core/collections/c9637c6d-6520-48f8-8425-dc72a170dd80/mappedItems
#> 17 https://jscholarship.library.jhu.edu/server/api/core/collections/af7dd14c-4782-477a-bfc0-bec27e56605f/mappedItems
#> 18 https://jscholarship.library.jhu.edu/server/api/core/collections/f3422598-157d-40fc-a975-8394b01e9d1e/mappedItems
#> 19 https://jscholarship.library.jhu.edu/server/api/core/collections/aa1e8f29-8964-4727-8225-a2a17265afc3/mappedItems
#> 20 https://jscholarship.library.jhu.edu/server/api/core/collections/ae3d6fe2-e042-49c2-a2c8-aaaf0a07f225/mappedItems
#>                                                                                                              _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/collections/718b69ac-0a0d-4e4c-b02b-41c518ea46f9/parentCommunity
#> 2  https://jscholarship.library.jhu.edu/server/api/core/collections/0be184ac-e9c8-40d4-91c4-7ca27c1fd7f9/parentCommunity
#> 3  https://jscholarship.library.jhu.edu/server/api/core/collections/e13924d3-e26f-43a7-886a-21928fcc5100/parentCommunity
#> 4  https://jscholarship.library.jhu.edu/server/api/core/collections/6b1ef4a3-ceda-4665-8ed2-948ca236ffb6/parentCommunity
#> 5  https://jscholarship.library.jhu.edu/server/api/core/collections/93cd1988-aedd-43dd-a564-8ea02aa759dc/parentCommunity
#> 6  https://jscholarship.library.jhu.edu/server/api/core/collections/6d28dcd6-9039-4fa1-b0c7-aa768609e638/parentCommunity
#> 7  https://jscholarship.library.jhu.edu/server/api/core/collections/de756986-f530-475b-97bb-a6fff37e1394/parentCommunity
#> 8  https://jscholarship.library.jhu.edu/server/api/core/collections/4fbd8214-81dc-4014-8ffb-a43bfd37e3c9/parentCommunity
#> 9  https://jscholarship.library.jhu.edu/server/api/core/collections/6c91955f-2cee-45bb-91c8-0c195100d5a9/parentCommunity
#> 10 https://jscholarship.library.jhu.edu/server/api/core/collections/8b2522dd-5674-4c83-a9b6-1bb2b51501a2/parentCommunity
#> 11 https://jscholarship.library.jhu.edu/server/api/core/collections/d8ac5a94-123d-4b5a-a99e-11c3f5b7095e/parentCommunity
#> 12 https://jscholarship.library.jhu.edu/server/api/core/collections/7e692697-d553-4887-8404-61a0821e42b8/parentCommunity
#> 13 https://jscholarship.library.jhu.edu/server/api/core/collections/4c0bf61d-a52e-478a-a85f-1b9fab18bdb9/parentCommunity
#> 14 https://jscholarship.library.jhu.edu/server/api/core/collections/dec32558-b1f0-4775-b126-8f31c4f2bb9a/parentCommunity
#> 15 https://jscholarship.library.jhu.edu/server/api/core/collections/55766e6c-a72b-4bd8-bcba-852df91aa6f9/parentCommunity
#> 16 https://jscholarship.library.jhu.edu/server/api/core/collections/c9637c6d-6520-48f8-8425-dc72a170dd80/parentCommunity
#> 17 https://jscholarship.library.jhu.edu/server/api/core/collections/af7dd14c-4782-477a-bfc0-bec27e56605f/parentCommunity
#> 18 https://jscholarship.library.jhu.edu/server/api/core/collections/f3422598-157d-40fc-a975-8394b01e9d1e/parentCommunity
#> 19 https://jscholarship.library.jhu.edu/server/api/core/collections/aa1e8f29-8964-4727-8225-a2a17265afc3/parentCommunity
#> 20 https://jscholarship.library.jhu.edu/server/api/core/collections/ae3d6fe2-e042-49c2-a2c8-aaaf0a07f225/parentCommunity
#>                                                                                                         _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/collections/718b69ac-0a0d-4e4c-b02b-41c518ea46f9/adminGroup
#> 2  https://jscholarship.library.jhu.edu/server/api/core/collections/0be184ac-e9c8-40d4-91c4-7ca27c1fd7f9/adminGroup
#> 3  https://jscholarship.library.jhu.edu/server/api/core/collections/e13924d3-e26f-43a7-886a-21928fcc5100/adminGroup
#> 4  https://jscholarship.library.jhu.edu/server/api/core/collections/6b1ef4a3-ceda-4665-8ed2-948ca236ffb6/adminGroup
#> 5  https://jscholarship.library.jhu.edu/server/api/core/collections/93cd1988-aedd-43dd-a564-8ea02aa759dc/adminGroup
#> 6  https://jscholarship.library.jhu.edu/server/api/core/collections/6d28dcd6-9039-4fa1-b0c7-aa768609e638/adminGroup
#> 7  https://jscholarship.library.jhu.edu/server/api/core/collections/de756986-f530-475b-97bb-a6fff37e1394/adminGroup
#> 8  https://jscholarship.library.jhu.edu/server/api/core/collections/4fbd8214-81dc-4014-8ffb-a43bfd37e3c9/adminGroup
#> 9  https://jscholarship.library.jhu.edu/server/api/core/collections/6c91955f-2cee-45bb-91c8-0c195100d5a9/adminGroup
#> 10 https://jscholarship.library.jhu.edu/server/api/core/collections/8b2522dd-5674-4c83-a9b6-1bb2b51501a2/adminGroup
#> 11 https://jscholarship.library.jhu.edu/server/api/core/collections/d8ac5a94-123d-4b5a-a99e-11c3f5b7095e/adminGroup
#> 12 https://jscholarship.library.jhu.edu/server/api/core/collections/7e692697-d553-4887-8404-61a0821e42b8/adminGroup
#> 13 https://jscholarship.library.jhu.edu/server/api/core/collections/4c0bf61d-a52e-478a-a85f-1b9fab18bdb9/adminGroup
#> 14 https://jscholarship.library.jhu.edu/server/api/core/collections/dec32558-b1f0-4775-b126-8f31c4f2bb9a/adminGroup
#> 15 https://jscholarship.library.jhu.edu/server/api/core/collections/55766e6c-a72b-4bd8-bcba-852df91aa6f9/adminGroup
#> 16 https://jscholarship.library.jhu.edu/server/api/core/collections/c9637c6d-6520-48f8-8425-dc72a170dd80/adminGroup
#> 17 https://jscholarship.library.jhu.edu/server/api/core/collections/af7dd14c-4782-477a-bfc0-bec27e56605f/adminGroup
#> 18 https://jscholarship.library.jhu.edu/server/api/core/collections/f3422598-157d-40fc-a975-8394b01e9d1e/adminGroup
#> 19 https://jscholarship.library.jhu.edu/server/api/core/collections/aa1e8f29-8964-4727-8225-a2a17265afc3/adminGroup
#> 20 https://jscholarship.library.jhu.edu/server/api/core/collections/ae3d6fe2-e042-49c2-a2c8-aaaf0a07f225/adminGroup
#>                                                                                                              _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/collections/718b69ac-0a0d-4e4c-b02b-41c518ea46f9/submittersGroup
#> 2  https://jscholarship.library.jhu.edu/server/api/core/collections/0be184ac-e9c8-40d4-91c4-7ca27c1fd7f9/submittersGroup
#> 3  https://jscholarship.library.jhu.edu/server/api/core/collections/e13924d3-e26f-43a7-886a-21928fcc5100/submittersGroup
#> 4  https://jscholarship.library.jhu.edu/server/api/core/collections/6b1ef4a3-ceda-4665-8ed2-948ca236ffb6/submittersGroup
#> 5  https://jscholarship.library.jhu.edu/server/api/core/collections/93cd1988-aedd-43dd-a564-8ea02aa759dc/submittersGroup
#> 6  https://jscholarship.library.jhu.edu/server/api/core/collections/6d28dcd6-9039-4fa1-b0c7-aa768609e638/submittersGroup
#> 7  https://jscholarship.library.jhu.edu/server/api/core/collections/de756986-f530-475b-97bb-a6fff37e1394/submittersGroup
#> 8  https://jscholarship.library.jhu.edu/server/api/core/collections/4fbd8214-81dc-4014-8ffb-a43bfd37e3c9/submittersGroup
#> 9  https://jscholarship.library.jhu.edu/server/api/core/collections/6c91955f-2cee-45bb-91c8-0c195100d5a9/submittersGroup
#> 10 https://jscholarship.library.jhu.edu/server/api/core/collections/8b2522dd-5674-4c83-a9b6-1bb2b51501a2/submittersGroup
#> 11 https://jscholarship.library.jhu.edu/server/api/core/collections/d8ac5a94-123d-4b5a-a99e-11c3f5b7095e/submittersGroup
#> 12 https://jscholarship.library.jhu.edu/server/api/core/collections/7e692697-d553-4887-8404-61a0821e42b8/submittersGroup
#> 13 https://jscholarship.library.jhu.edu/server/api/core/collections/4c0bf61d-a52e-478a-a85f-1b9fab18bdb9/submittersGroup
#> 14 https://jscholarship.library.jhu.edu/server/api/core/collections/dec32558-b1f0-4775-b126-8f31c4f2bb9a/submittersGroup
#> 15 https://jscholarship.library.jhu.edu/server/api/core/collections/55766e6c-a72b-4bd8-bcba-852df91aa6f9/submittersGroup
#> 16 https://jscholarship.library.jhu.edu/server/api/core/collections/c9637c6d-6520-48f8-8425-dc72a170dd80/submittersGroup
#> 17 https://jscholarship.library.jhu.edu/server/api/core/collections/af7dd14c-4782-477a-bfc0-bec27e56605f/submittersGroup
#> 18 https://jscholarship.library.jhu.edu/server/api/core/collections/f3422598-157d-40fc-a975-8394b01e9d1e/submittersGroup
#> 19 https://jscholarship.library.jhu.edu/server/api/core/collections/aa1e8f29-8964-4727-8225-a2a17265afc3/submittersGroup
#> 20 https://jscholarship.library.jhu.edu/server/api/core/collections/ae3d6fe2-e042-49c2-a2c8-aaaf0a07f225/submittersGroup
#>                                                                                                            _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/collections/718b69ac-0a0d-4e4c-b02b-41c518ea46f9/itemReadGroup
#> 2  https://jscholarship.library.jhu.edu/server/api/core/collections/0be184ac-e9c8-40d4-91c4-7ca27c1fd7f9/itemReadGroup
#> 3  https://jscholarship.library.jhu.edu/server/api/core/collections/e13924d3-e26f-43a7-886a-21928fcc5100/itemReadGroup
#> 4  https://jscholarship.library.jhu.edu/server/api/core/collections/6b1ef4a3-ceda-4665-8ed2-948ca236ffb6/itemReadGroup
#> 5  https://jscholarship.library.jhu.edu/server/api/core/collections/93cd1988-aedd-43dd-a564-8ea02aa759dc/itemReadGroup
#> 6  https://jscholarship.library.jhu.edu/server/api/core/collections/6d28dcd6-9039-4fa1-b0c7-aa768609e638/itemReadGroup
#> 7  https://jscholarship.library.jhu.edu/server/api/core/collections/de756986-f530-475b-97bb-a6fff37e1394/itemReadGroup
#> 8  https://jscholarship.library.jhu.edu/server/api/core/collections/4fbd8214-81dc-4014-8ffb-a43bfd37e3c9/itemReadGroup
#> 9  https://jscholarship.library.jhu.edu/server/api/core/collections/6c91955f-2cee-45bb-91c8-0c195100d5a9/itemReadGroup
#> 10 https://jscholarship.library.jhu.edu/server/api/core/collections/8b2522dd-5674-4c83-a9b6-1bb2b51501a2/itemReadGroup
#> 11 https://jscholarship.library.jhu.edu/server/api/core/collections/d8ac5a94-123d-4b5a-a99e-11c3f5b7095e/itemReadGroup
#> 12 https://jscholarship.library.jhu.edu/server/api/core/collections/7e692697-d553-4887-8404-61a0821e42b8/itemReadGroup
#> 13 https://jscholarship.library.jhu.edu/server/api/core/collections/4c0bf61d-a52e-478a-a85f-1b9fab18bdb9/itemReadGroup
#> 14 https://jscholarship.library.jhu.edu/server/api/core/collections/dec32558-b1f0-4775-b126-8f31c4f2bb9a/itemReadGroup
#> 15 https://jscholarship.library.jhu.edu/server/api/core/collections/55766e6c-a72b-4bd8-bcba-852df91aa6f9/itemReadGroup
#> 16 https://jscholarship.library.jhu.edu/server/api/core/collections/c9637c6d-6520-48f8-8425-dc72a170dd80/itemReadGroup
#> 17 https://jscholarship.library.jhu.edu/server/api/core/collections/af7dd14c-4782-477a-bfc0-bec27e56605f/itemReadGroup
#> 18 https://jscholarship.library.jhu.edu/server/api/core/collections/f3422598-157d-40fc-a975-8394b01e9d1e/itemReadGroup
#> 19 https://jscholarship.library.jhu.edu/server/api/core/collections/aa1e8f29-8964-4727-8225-a2a17265afc3/itemReadGroup
#> 20 https://jscholarship.library.jhu.edu/server/api/core/collections/ae3d6fe2-e042-49c2-a2c8-aaaf0a07f225/itemReadGroup
#>                                                                                                                 _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/collections/718b69ac-0a0d-4e4c-b02b-41c518ea46f9/bitstreamReadGroup
#> 2  https://jscholarship.library.jhu.edu/server/api/core/collections/0be184ac-e9c8-40d4-91c4-7ca27c1fd7f9/bitstreamReadGroup
#> 3  https://jscholarship.library.jhu.edu/server/api/core/collections/e13924d3-e26f-43a7-886a-21928fcc5100/bitstreamReadGroup
#> 4  https://jscholarship.library.jhu.edu/server/api/core/collections/6b1ef4a3-ceda-4665-8ed2-948ca236ffb6/bitstreamReadGroup
#> 5  https://jscholarship.library.jhu.edu/server/api/core/collections/93cd1988-aedd-43dd-a564-8ea02aa759dc/bitstreamReadGroup
#> 6  https://jscholarship.library.jhu.edu/server/api/core/collections/6d28dcd6-9039-4fa1-b0c7-aa768609e638/bitstreamReadGroup
#> 7  https://jscholarship.library.jhu.edu/server/api/core/collections/de756986-f530-475b-97bb-a6fff37e1394/bitstreamReadGroup
#> 8  https://jscholarship.library.jhu.edu/server/api/core/collections/4fbd8214-81dc-4014-8ffb-a43bfd37e3c9/bitstreamReadGroup
#> 9  https://jscholarship.library.jhu.edu/server/api/core/collections/6c91955f-2cee-45bb-91c8-0c195100d5a9/bitstreamReadGroup
#> 10 https://jscholarship.library.jhu.edu/server/api/core/collections/8b2522dd-5674-4c83-a9b6-1bb2b51501a2/bitstreamReadGroup
#> 11 https://jscholarship.library.jhu.edu/server/api/core/collections/d8ac5a94-123d-4b5a-a99e-11c3f5b7095e/bitstreamReadGroup
#> 12 https://jscholarship.library.jhu.edu/server/api/core/collections/7e692697-d553-4887-8404-61a0821e42b8/bitstreamReadGroup
#> 13 https://jscholarship.library.jhu.edu/server/api/core/collections/4c0bf61d-a52e-478a-a85f-1b9fab18bdb9/bitstreamReadGroup
#> 14 https://jscholarship.library.jhu.edu/server/api/core/collections/dec32558-b1f0-4775-b126-8f31c4f2bb9a/bitstreamReadGroup
#> 15 https://jscholarship.library.jhu.edu/server/api/core/collections/55766e6c-a72b-4bd8-bcba-852df91aa6f9/bitstreamReadGroup
#> 16 https://jscholarship.library.jhu.edu/server/api/core/collections/c9637c6d-6520-48f8-8425-dc72a170dd80/bitstreamReadGroup
#> 17 https://jscholarship.library.jhu.edu/server/api/core/collections/af7dd14c-4782-477a-bfc0-bec27e56605f/bitstreamReadGroup
#> 18 https://jscholarship.library.jhu.edu/server/api/core/collections/f3422598-157d-40fc-a975-8394b01e9d1e/bitstreamReadGroup
#> 19 https://jscholarship.library.jhu.edu/server/api/core/collections/aa1e8f29-8964-4727-8225-a2a17265afc3/bitstreamReadGroup
#> 20 https://jscholarship.library.jhu.edu/server/api/core/collections/ae3d6fe2-e042-49c2-a2c8-aaaf0a07f225/bitstreamReadGroup
#>                                                                                              _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/collections/718b69ac-0a0d-4e4c-b02b-41c518ea46f9
#> 2  https://jscholarship.library.jhu.edu/server/api/core/collections/0be184ac-e9c8-40d4-91c4-7ca27c1fd7f9
#> 3  https://jscholarship.library.jhu.edu/server/api/core/collections/e13924d3-e26f-43a7-886a-21928fcc5100
#> 4  https://jscholarship.library.jhu.edu/server/api/core/collections/6b1ef4a3-ceda-4665-8ed2-948ca236ffb6
#> 5  https://jscholarship.library.jhu.edu/server/api/core/collections/93cd1988-aedd-43dd-a564-8ea02aa759dc
#> 6  https://jscholarship.library.jhu.edu/server/api/core/collections/6d28dcd6-9039-4fa1-b0c7-aa768609e638
#> 7  https://jscholarship.library.jhu.edu/server/api/core/collections/de756986-f530-475b-97bb-a6fff37e1394
#> 8  https://jscholarship.library.jhu.edu/server/api/core/collections/4fbd8214-81dc-4014-8ffb-a43bfd37e3c9
#> 9  https://jscholarship.library.jhu.edu/server/api/core/collections/6c91955f-2cee-45bb-91c8-0c195100d5a9
#> 10 https://jscholarship.library.jhu.edu/server/api/core/collections/8b2522dd-5674-4c83-a9b6-1bb2b51501a2
#> 11 https://jscholarship.library.jhu.edu/server/api/core/collections/d8ac5a94-123d-4b5a-a99e-11c3f5b7095e
#> 12 https://jscholarship.library.jhu.edu/server/api/core/collections/7e692697-d553-4887-8404-61a0821e42b8
#> 13 https://jscholarship.library.jhu.edu/server/api/core/collections/4c0bf61d-a52e-478a-a85f-1b9fab18bdb9
#> 14 https://jscholarship.library.jhu.edu/server/api/core/collections/dec32558-b1f0-4775-b126-8f31c4f2bb9a
#> 15 https://jscholarship.library.jhu.edu/server/api/core/collections/55766e6c-a72b-4bd8-bcba-852df91aa6f9
#> 16 https://jscholarship.library.jhu.edu/server/api/core/collections/c9637c6d-6520-48f8-8425-dc72a170dd80
#> 17 https://jscholarship.library.jhu.edu/server/api/core/collections/af7dd14c-4782-477a-bfc0-bec27e56605f
#> 18 https://jscholarship.library.jhu.edu/server/api/core/collections/f3422598-157d-40fc-a975-8394b01e9d1e
#> 19 https://jscholarship.library.jhu.edu/server/api/core/collections/aa1e8f29-8964-4727-8225-a2a17265afc3
#> 20 https://jscholarship.library.jhu.edu/server/api/core/collections/ae3d6fe2-e042-49c2-a2c8-aaaf0a07f225
#>                                                                                                                                                                                                                                                                                                                                                                                                          _links.workflowGroups
#> 1  https://jscholarship.library.jhu.edu/server/api/core/collections/718b69ac-0a0d-4e4c-b02b-41c518ea46f9/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/718b69ac-0a0d-4e4c-b02b-41c518ea46f9/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/718b69ac-0a0d-4e4c-b02b-41c518ea46f9/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 2  https://jscholarship.library.jhu.edu/server/api/core/collections/0be184ac-e9c8-40d4-91c4-7ca27c1fd7f9/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/0be184ac-e9c8-40d4-91c4-7ca27c1fd7f9/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/0be184ac-e9c8-40d4-91c4-7ca27c1fd7f9/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 3  https://jscholarship.library.jhu.edu/server/api/core/collections/e13924d3-e26f-43a7-886a-21928fcc5100/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/e13924d3-e26f-43a7-886a-21928fcc5100/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/e13924d3-e26f-43a7-886a-21928fcc5100/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 4  https://jscholarship.library.jhu.edu/server/api/core/collections/6b1ef4a3-ceda-4665-8ed2-948ca236ffb6/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/6b1ef4a3-ceda-4665-8ed2-948ca236ffb6/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/6b1ef4a3-ceda-4665-8ed2-948ca236ffb6/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 5  https://jscholarship.library.jhu.edu/server/api/core/collections/93cd1988-aedd-43dd-a564-8ea02aa759dc/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/93cd1988-aedd-43dd-a564-8ea02aa759dc/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/93cd1988-aedd-43dd-a564-8ea02aa759dc/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 6  https://jscholarship.library.jhu.edu/server/api/core/collections/6d28dcd6-9039-4fa1-b0c7-aa768609e638/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/6d28dcd6-9039-4fa1-b0c7-aa768609e638/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/6d28dcd6-9039-4fa1-b0c7-aa768609e638/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 7  https://jscholarship.library.jhu.edu/server/api/core/collections/de756986-f530-475b-97bb-a6fff37e1394/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/de756986-f530-475b-97bb-a6fff37e1394/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/de756986-f530-475b-97bb-a6fff37e1394/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 8  https://jscholarship.library.jhu.edu/server/api/core/collections/4fbd8214-81dc-4014-8ffb-a43bfd37e3c9/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/4fbd8214-81dc-4014-8ffb-a43bfd37e3c9/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/4fbd8214-81dc-4014-8ffb-a43bfd37e3c9/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 9  https://jscholarship.library.jhu.edu/server/api/core/collections/6c91955f-2cee-45bb-91c8-0c195100d5a9/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/6c91955f-2cee-45bb-91c8-0c195100d5a9/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/6c91955f-2cee-45bb-91c8-0c195100d5a9/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 10 https://jscholarship.library.jhu.edu/server/api/core/collections/8b2522dd-5674-4c83-a9b6-1bb2b51501a2/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/8b2522dd-5674-4c83-a9b6-1bb2b51501a2/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/8b2522dd-5674-4c83-a9b6-1bb2b51501a2/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 11 https://jscholarship.library.jhu.edu/server/api/core/collections/d8ac5a94-123d-4b5a-a99e-11c3f5b7095e/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/d8ac5a94-123d-4b5a-a99e-11c3f5b7095e/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/d8ac5a94-123d-4b5a-a99e-11c3f5b7095e/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 12 https://jscholarship.library.jhu.edu/server/api/core/collections/7e692697-d553-4887-8404-61a0821e42b8/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/7e692697-d553-4887-8404-61a0821e42b8/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/7e692697-d553-4887-8404-61a0821e42b8/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 13 https://jscholarship.library.jhu.edu/server/api/core/collections/4c0bf61d-a52e-478a-a85f-1b9fab18bdb9/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/4c0bf61d-a52e-478a-a85f-1b9fab18bdb9/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/4c0bf61d-a52e-478a-a85f-1b9fab18bdb9/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 14 https://jscholarship.library.jhu.edu/server/api/core/collections/dec32558-b1f0-4775-b126-8f31c4f2bb9a/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/dec32558-b1f0-4775-b126-8f31c4f2bb9a/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/dec32558-b1f0-4775-b126-8f31c4f2bb9a/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 15 https://jscholarship.library.jhu.edu/server/api/core/collections/55766e6c-a72b-4bd8-bcba-852df91aa6f9/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/55766e6c-a72b-4bd8-bcba-852df91aa6f9/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/55766e6c-a72b-4bd8-bcba-852df91aa6f9/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 16 https://jscholarship.library.jhu.edu/server/api/core/collections/c9637c6d-6520-48f8-8425-dc72a170dd80/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/c9637c6d-6520-48f8-8425-dc72a170dd80/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/c9637c6d-6520-48f8-8425-dc72a170dd80/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 17 https://jscholarship.library.jhu.edu/server/api/core/collections/af7dd14c-4782-477a-bfc0-bec27e56605f/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/af7dd14c-4782-477a-bfc0-bec27e56605f/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/af7dd14c-4782-477a-bfc0-bec27e56605f/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 18 https://jscholarship.library.jhu.edu/server/api/core/collections/f3422598-157d-40fc-a975-8394b01e9d1e/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/f3422598-157d-40fc-a975-8394b01e9d1e/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/f3422598-157d-40fc-a975-8394b01e9d1e/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 19 https://jscholarship.library.jhu.edu/server/api/core/collections/aa1e8f29-8964-4727-8225-a2a17265afc3/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/aa1e8f29-8964-4727-8225-a2a17265afc3/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/aa1e8f29-8964-4727-8225-a2a17265afc3/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 20 https://jscholarship.library.jhu.edu/server/api/core/collections/ae3d6fe2-e042-49c2-a2c8-aaaf0a07f225/workflowGroups/reviewer, https://jscholarship.library.jhu.edu/server/api/core/collections/ae3d6fe2-e042-49c2-a2c8-aaaf0a07f225/workflowGroups/editor, https://jscholarship.library.jhu.edu/server/api/core/collections/ae3d6fe2-e042-49c2-a2c8-aaaf0a07f225/workflowGroups/finaleditor, reviewer, editor, finaleditor
#> 
#> 
#> $`_links`
#> $`_links`$first
#> $`_links`$first$href
#> [1] "https://jscholarship.library.jhu.edu/server/api/core/collections?page=0&size=20"
#> 
#> 
#> $`_links`$self
#> $`_links`$self$href
#> [1] "https://jscholarship.library.jhu.edu/server/api/core/collections"
#> 
#> 
#> $`_links`$`next`
#> $`_links`$`next`$href
#> [1] "https://jscholarship.library.jhu.edu/server/api/core/collections?page=1&size=20"
#> 
#> 
#> $`_links`$last
#> $`_links`$last$href
#> [1] "https://jscholarship.library.jhu.edu/server/api/core/collections?page=7&size=20"
#> 
#> 
#> $`_links`$search
#> $`_links`$search$href
#> [1] "https://jscholarship.library.jhu.edu/server/api/core/collections/search"
#> 
#> 
#> 
#> $page
#> $page$size
#> [1] 20
#> 
#> $page$totalElements
#> [1] 145
#> 
#> $page$totalPages
#> [1] 8
#> 
#> $page$number
#> [1] 0

ds_search(
  "https://jscholarship.library.jhu.edu/server/api"
)
#> $id
#> NULL
#> 
#> $filters
#>                            filter hasFacets         type
#> 1                           title     FALSE         text
#> 2                          author      TRUE         text
#> 3                         subject      TRUE hierarchical
#> 4                      dateIssued      TRUE         date
#> 5  has_content_in_original_bundle      TRUE     standard
#> 6       original_bundle_filenames     FALSE         text
#> 7    original_bundle_descriptions     FALSE         text
#> 8                      entityType      TRUE         text
#> 9           isAuthorOfPublication     FALSE         text
#> 10         isProjectOfPublication     FALSE         text
#> 11         isOrgUnitOfPublication     FALSE         text
#> 12    isPublicationOfJournalIssue     FALSE         text
#> 13         isJournalOfPublication     FALSE         text
#>                                                                   operators
#> 1  equals, notequals, authority, notauthority, contains, notcontains, query
#> 2  equals, notequals, authority, notauthority, contains, notcontains, query
#> 3  equals, notequals, authority, notauthority, contains, notcontains, query
#> 4  equals, notequals, authority, notauthority, contains, notcontains, query
#> 5  equals, notequals, authority, notauthority, contains, notcontains, query
#> 6  equals, notequals, authority, notauthority, contains, notcontains, query
#> 7  equals, notequals, authority, notauthority, contains, notcontains, query
#> 8  equals, notequals, authority, notauthority, contains, notcontains, query
#> 9  equals, notequals, authority, notauthority, contains, notcontains, query
#> 10 equals, notequals, authority, notauthority, contains, notcontains, query
#> 11 equals, notequals, authority, notauthority, contains, notcontains, query
#> 12 equals, notequals, authority, notauthority, contains, notcontains, query
#> 13 equals, notequals, authority, notauthority, contains, notcontains, query
#>    pageSize openByDefault
#> 1        10          TRUE
#> 2        10          TRUE
#> 3         0         FALSE
#> 4        10         FALSE
#> 5        10         FALSE
#> 6         0         FALSE
#> 7         0         FALSE
#> 8         0         FALSE
#> 9        10         FALSE
#> 10       10         FALSE
#> 11       10         FALSE
#> 12       10         FALSE
#> 13       10         FALSE
#> 
#> $sortOptions
#>                  name sortOrder
#> 1               score      desc
#> 2            dc.title       asc
#> 3      dc.date.issued      desc
#> 4 dc.date.accessioned      desc
#> 
#> $defaultSortOption
#> NULL
#> 
#> $type
#> [1] "discover"
#> 
#> $`_links`
#> $`_links`$facets
#> $`_links`$facets$href
#> [1] "https://jscholarship.library.jhu.edu/server/api/discover/search/facets"
#> 
#> 
#> $`_links`$objects
#> $`_links`$objects$href
#> [1] "https://jscholarship.library.jhu.edu/server/api/discover/search/objects"
#> 
#> 
#> $`_links`$self
#> $`_links`$self$href
#> [1] "https://jscholarship.library.jhu.edu/server/api/discover/search"

ds_communities(
  "https://jscholarship.library.jhu.edu/server/api"
)
#> $`_embedded`
#> $`_embedded`$communities
#>                                      id                                 uuid
#> 1  7e9bc42b-4d4a-4738-ad68-e15ad268ba85 7e9bc42b-4d4a-4738-ad68-e15ad268ba85
#> 2  ecec4092-8b82-455a-8215-6ae2825a19e0 ecec4092-8b82-455a-8215-6ae2825a19e0
#> 3  58996331-0750-4d53-8eae-8a2acab3bdf8 58996331-0750-4d53-8eae-8a2acab3bdf8
#> 4  006fccb8-719a-4784-bfda-bd0d5d0754f9 006fccb8-719a-4784-bfda-bd0d5d0754f9
#> 5  f02a90eb-5253-4680-a68f-cef222944638 f02a90eb-5253-4680-a68f-cef222944638
#> 6  5a803825-ec1c-4c8a-ab34-4107fa760e40 5a803825-ec1c-4c8a-ab34-4107fa760e40
#> 7  55bfbbee-067b-4d25-a53e-7aa59444682a 55bfbbee-067b-4d25-a53e-7aa59444682a
#> 8  0a81e623-437f-496b-b2be-47ae88037d9d 0a81e623-437f-496b-b2be-47ae88037d9d
#> 9  a33ff8e9-3d70-4f62-9c56-04782f55c09a a33ff8e9-3d70-4f62-9c56-04782f55c09a
#> 10 74e02454-1658-403f-b0bf-6d1e992e187b 74e02454-1658-403f-b0bf-6d1e992e187b
#> 11 338857a5-f097-405c-b5d6-838bfebb7903 338857a5-f097-405c-b5d6-838bfebb7903
#> 12 a3466db3-fbef-428a-aabc-349e873c48c6 a3466db3-fbef-428a-aabc-349e873c48c6
#> 13 dab3dbb2-f683-404e-9012-77d2a22f697c dab3dbb2-f683-404e-9012-77d2a22f697c
#> 14 7d031f07-a129-46e1-8501-8eb37d653ff4 7d031f07-a129-46e1-8501-8eb37d653ff4
#> 15 d74bccd4-4861-4a8e-838f-44273f7e08af d74bccd4-4861-4a8e-838f-44273f7e08af
#> 16 2c964082-6a00-423a-90a8-8e6af9c837c6 2c964082-6a00-423a-90a8-8e6af9c837c6
#> 17 c5674b33-b5c3-410a-9448-e4831e4142e6 c5674b33-b5c3-410a-9448-e4831e4142e6
#> 18 d9e81d34-b0af-436d-838a-a1df82fa8db3 d9e81d34-b0af-436d-838a-a1df82fa8db3
#> 19 d2803f39-e166-4cb5-818a-0a4ddd4cc88a d2803f39-e166-4cb5-818a-0a4ddd4cc88a
#> 20 83279909-0a80-4e78-9297-66eb37bb82a9 83279909-0a80-4e78-9297-66eb37bb82a9
#>                                                 name       handle
#> 1                         Advanced Academic Programs 1774.2/33508
#> 2                       Africana Studies, Center for 1774.2/32578
#> 3                Alan Mason Chesney Medical Archives 1774.2/44447
#> 4                    American Prison Writing Archive 1774.2/68141
#> 5                        Anthropology, Department of 1774.2/62104
#> 6  Arthur Friedheim Library of the Peabody Institute 1774.2/34786
#> 7                   Biomedical Engineering, Dept. of 1774.2/33645
#> 8                            Biostatistics, Dept. of 1774.2/32828
#> 9                  Bloomberg School of Public Health 1774.2/40629
#> 10                             Carey Business School 1774.2/32769
#> 11             Center for Inherited Disease Research 1774.2/36505
#> 12     Cold-Formed Steel Research Consortium (CFSRC) 1774.2/40427
#> 13                        Computer Science, Dept. of   1774.2/881
#> 14                                  Data Conservancy 1774.2/33950
#> 15                                East Asian Studies 1774.2/59103
#> 16                          Economics, Department of 1774.2/64314
#> 17                 Educational Resources, Center for 1774.2/33258
#> 18     Electrical and Computer Engineering, Dept. of 1774.2/33429
#> 19      Gastroenterology and Hepatology, Division of 1774.2/34268
#> 20   Genetic Medicine, McKusick-Nathans Institute of 1774.2/36504
#>                                                 metadata.dc.identifier.uri
#> 1  https://jscholarship.library.jhu.edu/handle/1774.2/33508, NA, NA, -1, 0
#> 2  https://jscholarship.library.jhu.edu/handle/1774.2/32578, NA, NA, -1, 0
#> 3  https://jscholarship.library.jhu.edu/handle/1774.2/44447, NA, NA, -1, 0
#> 4  https://jscholarship.library.jhu.edu/handle/1774.2/68141, NA, NA, -1, 0
#> 5  https://jscholarship.library.jhu.edu/handle/1774.2/62104, NA, NA, -1, 0
#> 6  https://jscholarship.library.jhu.edu/handle/1774.2/34786, NA, NA, -1, 0
#> 7  https://jscholarship.library.jhu.edu/handle/1774.2/33645, NA, NA, -1, 0
#> 8  https://jscholarship.library.jhu.edu/handle/1774.2/32828, NA, NA, -1, 0
#> 9  https://jscholarship.library.jhu.edu/handle/1774.2/40629, NA, NA, -1, 0
#> 10 https://jscholarship.library.jhu.edu/handle/1774.2/32769, NA, NA, -1, 0
#> 11 https://jscholarship.library.jhu.edu/handle/1774.2/36505, NA, NA, -1, 0
#> 12 https://jscholarship.library.jhu.edu/handle/1774.2/40427, NA, NA, -1, 0
#> 13   https://jscholarship.library.jhu.edu/handle/1774.2/881, NA, NA, -1, 0
#> 14 https://jscholarship.library.jhu.edu/handle/1774.2/33950, NA, NA, -1, 0
#> 15 https://jscholarship.library.jhu.edu/handle/1774.2/59103, NA, NA, -1, 0
#> 16 https://jscholarship.library.jhu.edu/handle/1774.2/64314, NA, NA, -1, 0
#> 17 https://jscholarship.library.jhu.edu/handle/1774.2/33258, NA, NA, -1, 0
#> 18 https://jscholarship.library.jhu.edu/handle/1774.2/33429, NA, NA, -1, 0
#> 19 https://jscholarship.library.jhu.edu/handle/1774.2/34268, NA, NA, -1, 0
#> 20 https://jscholarship.library.jhu.edu/handle/1774.2/36504, NA, NA, -1, 0
#>                                                   metadata.dc.title
#> 1                         Advanced Academic Programs, NA, NA, -1, 0
#> 2                       Africana Studies, Center for, NA, NA, -1, 0
#> 3                Alan Mason Chesney Medical Archives, NA, NA, -1, 0
#> 4                    American Prison Writing Archive, NA, NA, -1, 0
#> 5                        Anthropology, Department of, NA, NA, -1, 0
#> 6  Arthur Friedheim Library of the Peabody Institute, NA, NA, -1, 0
#> 7                   Biomedical Engineering, Dept. of, NA, NA, -1, 0
#> 8                            Biostatistics, Dept. of, NA, NA, -1, 0
#> 9                  Bloomberg School of Public Health, NA, NA, -1, 0
#> 10                             Carey Business School, NA, NA, -1, 0
#> 11             Center for Inherited Disease Research, NA, NA, -1, 0
#> 12     Cold-Formed Steel Research Consortium (CFSRC), NA, NA, -1, 0
#> 13                        Computer Science, Dept. of, NA, NA, -1, 0
#> 14                                  Data Conservancy, NA, NA, -1, 0
#> 15                                East Asian Studies, NA, NA, -1, 0
#> 16                          Economics, Department of, NA, NA, -1, 0
#> 17                 Educational Resources, Center for, NA, NA, -1, 0
#> 18     Electrical and Computer Engineering, Dept. of, NA, NA, -1, 0
#> 19      Gastroenterology and Hepatology, Division of, NA, NA, -1, 0
#> 20   Genetic Medicine, McKusick-Nathans Institute of, NA, NA, -1, 0
#>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     metadata.dc.description
#> 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      NULL
#> 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          <div>\r\n<p>\r\nThe Center for Africana Studies in the Krieger School of Arts and Sciences pursues broad inquiry into the ideas and experiences of African peoples throughout the world. Its interdisciplinary approach is organized around three major sub-fields:\r\n</p>\r\n<p>\r\n<UL>\r\n<LI>African studies</LI>\r\n<LI>African-American studies</LI>\r\n<LI>Studies of the African Diaspora</LI>\r\n</UL>\r\n</p>\r\n<p>\r\nThe Center's work spans diverse academic disciplines in the humanities, social sciences, and public health. While its sub-fields possess distinct and distinctive intellectual traditions, they offer exciting possibilities for comparative as well as integrative inquiry.\r\n</p>\r\n</div>, NA, NA, -1, 0
#> 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 <p>The Alan Mason Chesney Medical Archives is the official archival repository for the Johns Hopkins Medical Institutions:</p>\r\n<p>The Johns Hopkins Hospital </p>\r\n<p>Johns Hopkins University School of Medicine</p>\r\n<p>Johns Hopkins University School of Nursing</p>\r\n<p>Johns Hopkins Bloomberg School of Public Health </p>\r\n\r\n<p>To inquire about items in this community, please contact archives@jhmi.edu or visit our website: <a href="http://medicalarchives.jhmi.edu/">http://medicalarchives.jhmi.edu/</a>.</p>, NA, NA, -1, 0
#> 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      NULL
#> 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      NULL
#> 6                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      NULL
#> 7                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      NULL
#> 8                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        <p>\r\n<a href="http://www.biostat.jhsph.edu/">Biostatistics</a> creates and applies methods for quantitative research in the health sciences. Our faculty conduct research across the spectrum of statistical science from foundations of inference to the discovery of new methodology to health applications. Our designs and analytic methods enable health scientists and professionals in academia, government, pharmaceutical companies, medical research organizations and elsewhere to efficiently acquire knowledge and draw valid conclusions from their ever-expanding sources of information. \r\n</p>, NA, NA, -1, 0
#> 9                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      NULL
#> 10                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  <div>\r\n<p>The <a href="http://carey.jhu.edu/">Carey Business School</a> builds on the Johns Hopkins University tradition of excellence in practice and research with MBA programs in the Baltimore, Maryland, and Washington, DC, area, as well as master's degree and certificate programs, and undergraduate programs.</p>\r\n</div>, NA, NA, -1, 0
#> 11                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     NULL
#> 12                       <p>\r\nAbout Us\r\n</p>\r\n<p>\r\nThe Cold-Formed Steel Research Consortium (CFSRC) is defined by its mission, vision, and core values.</p>\r\n<p>\r\nMission: To provide world-leading research that enables structural engineers and manufacturers to realize the full potential of structures utilizing cold-formed steel. To provide the world’s pre-eminent training experience for cold-formed steel researchers. To provide the cold-formed steel industry with world-leading research capabilities that are responsive to both short and long term needs of the industry. To enable engineers to quickly utilize the latest research and speed adoption of research into appropriate codes and standards. To leverage existing industry funding to win external research funds.\r\n</p>\r\n<p>\r\nVision: The Consortium is recognized by engineers, manufacturers, students, researchers, and funding agencies as the premier organization in the world for performing research in cold-formed steel structures. The Consortium grows the cold-formed steel research enterprise in the United States to greater than one million dollars per year.\r\n</p>\r\n<p>\r\nValues: General solutions using fundamental knowledge create the most long-term benefits. Enable the best engineers to solve the most unique problems. Use experiments to gain knowledge, not to fill tables.\r\n</p>\r\n<p>\r\nBased on these principles a Charter for the CFSRC was established at the Johns Hopkins University in May 2013\r\n</p>, NA, NA, -1, 0
#> 13 <div>\r\n<p>\r\nThe JHU Department of Computer Science is a department within the Whiting School of Engineering. While studies and research cover a very wide area, there are five main research interests: </p><br/>\r\n<p>\r\n <b> Algorithms</b> – A core area and long-standing strength of the department, dating from before the department’s formation.<br/>  \r\n<b>Robotics, Vision, and Graphics</b> – Much of the research in these areas, which involve 3-D computer modeling, is done within the Center for Computer-Integrated Surgical Systems and Technology (CISST).  Related research includes human-computer interaction, and shape recognition and shape matching.<br/> \r\n<b>Security</b> – This is an incredibly broad area and research, focused within the JHU Information Security Institute, involves many aspects of computer and network security.<br/>\r\n<b>Systems</b> –  This core research area grapples with improving operating systems and data storage and defining higher standards for security evaluation.  <br/>\r\n<b>Natural Language Processing</b> – This concerns enabling computers to work more effectively with human languages, identifying input strings and corresponding output, defining correlations between text and speech, form and content, syntax and translations. The Center for Language and Speech Processing (CLSP) is centrally involved with this work.</p>\r\n<br/>\r\n<p>Please see <a href ="http://www.cs.jhu.edu/">http://www.cs.jhu.edu/</a> for more information</p>\r\n</div>, NA, NA, -1, 0
#> 14                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     NULL
#> 15                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     NULL
#> 16                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         The Department of Economics at Johns Hopkins University is one of the leading economics departments in the U.S., with outstanding strength in its research faculty, graduate program, and undergraduate program.\r\n\r\nFaculty and graduate students engage in the exploration of five economic disciplines: applied microeconomics, economic theory, macroeconomics, econometrics, and finance., NA, NA, -1, 0
#> 17                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    <p>\r\nEstablished in 2001, The Center for Educational Resources (CER) partners with faculty and graduate students in the Krieger School of Arts and Sciences and Whiting School of Engineering to extend their instructional impact by connecting innovative teaching strategies and instructional technologies. The Center's mission aligns with the evolving role of university libraries as they advance from print-based repositories to electronic collaboratories that enable application of digital collections and networked services to new approaches in instructional and scholarly communication.\r\n</p>, NA, NA, -1, 0
#> 18                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  <p>\r\nThe <a href="http://www.ece.jhu.edu/">Department of Electrical and Computer Engineering</a> at Johns Hopkins is committed to providing a rigorous educational experience that prepares students for further study and successful careers, and is dedicated to research that contributes to fundamental knowledge in both analytical and experimental aspects of the field\r\n</p>, NA, NA, -1, 0
#> 19                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     NULL
#> 20                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     NULL
#>                                                                                                                                                                                 metadata.dc.description.abstract
#> 1                                                                                                                                                                                                           NULL
#> 2                                                                                                                                                                     Center for Africana Studies, NA, NA, -1, 0
#> 3                                                                                                                                                                                                           NULL
#> 4  The mission of the American Prison Writing Archive (APWA) is to replace misrepresentation of prisons and imprisoned people with first-person witness by those living in legalized confinement., NA, NA, -1, 0
#> 5                                                                                                                                                                                                           NULL
#> 6                                                                                                                                                                               Friedheim Library, NA, NA, -1, 0
#> 7                                                                                                                                                                                                           NULL
#> 8                                                                                                                                                                                                           NULL
#> 9                                                                                                                                                                                                           NULL
#> 10                                                                                                                                                                                                          NULL
#> 11                                                                                                                                                                                                          NULL
#> 12                                                                                                                                                                                                          NULL
#> 13                                                                                                                                                                               Computer Science, NA, NA, -1, 0
#> 14                                                                                                                                                                                                          NULL
#> 15                                                                                                                                                                                                          NULL
#> 16                                                                                                                                                                                                          NULL
#> 17                                                                                                                                                                                                          NULL
#> 18                                                                                                                                                                                                          NULL
#> 19                                                                                                                                                                                                          NULL
#> 20                                                                                                                                                                                                          NULL
#>                                                      metadata.dc.rights
#> 1                                                                  NULL
#> 2                                                                  NULL
#> 3                                                                  NULL
#> 4  © 2023 Johns Hopkins University. All Rights Reserved., NA, NA, -1, 0
#> 5                                                                  NULL
#> 6                                                                  NULL
#> 7                                                                  NULL
#> 8                                                                  NULL
#> 9                                                                  NULL
#> 10                                                                 NULL
#> 11                                                                 NULL
#> 12                                                                 NULL
#> 13                                                                 NULL
#> 14                                                                 NULL
#> 15                                                                 NULL
#> 16                                                                 NULL
#> 17                                                                 NULL
#> 18                                                                 NULL
#> 19                                                                 NULL
#> 20                                                                 NULL
#>    archivedItemsCount      type
#> 1                  -1 community
#> 2                  -1 community
#> 3                  -1 community
#> 4                  -1 community
#> 5                  -1 community
#> 6                  -1 community
#> 7                  -1 community
#> 8                  -1 community
#> 9                  -1 community
#> 10                 -1 community
#> 11                 -1 community
#> 12                 -1 community
#> 13                 -1 community
#> 14                 -1 community
#> 15                 -1 community
#> 16                 -1 community
#> 17                 -1 community
#> 18                 -1 community
#> 19                 -1 community
#> 20                 -1 community
#>                                                                                                          _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/communities/7e9bc42b-4d4a-4738-ad68-e15ad268ba85/collections
#> 2  https://jscholarship.library.jhu.edu/server/api/core/communities/ecec4092-8b82-455a-8215-6ae2825a19e0/collections
#> 3  https://jscholarship.library.jhu.edu/server/api/core/communities/58996331-0750-4d53-8eae-8a2acab3bdf8/collections
#> 4  https://jscholarship.library.jhu.edu/server/api/core/communities/006fccb8-719a-4784-bfda-bd0d5d0754f9/collections
#> 5  https://jscholarship.library.jhu.edu/server/api/core/communities/f02a90eb-5253-4680-a68f-cef222944638/collections
#> 6  https://jscholarship.library.jhu.edu/server/api/core/communities/5a803825-ec1c-4c8a-ab34-4107fa760e40/collections
#> 7  https://jscholarship.library.jhu.edu/server/api/core/communities/55bfbbee-067b-4d25-a53e-7aa59444682a/collections
#> 8  https://jscholarship.library.jhu.edu/server/api/core/communities/0a81e623-437f-496b-b2be-47ae88037d9d/collections
#> 9  https://jscholarship.library.jhu.edu/server/api/core/communities/a33ff8e9-3d70-4f62-9c56-04782f55c09a/collections
#> 10 https://jscholarship.library.jhu.edu/server/api/core/communities/74e02454-1658-403f-b0bf-6d1e992e187b/collections
#> 11 https://jscholarship.library.jhu.edu/server/api/core/communities/338857a5-f097-405c-b5d6-838bfebb7903/collections
#> 12 https://jscholarship.library.jhu.edu/server/api/core/communities/a3466db3-fbef-428a-aabc-349e873c48c6/collections
#> 13 https://jscholarship.library.jhu.edu/server/api/core/communities/dab3dbb2-f683-404e-9012-77d2a22f697c/collections
#> 14 https://jscholarship.library.jhu.edu/server/api/core/communities/7d031f07-a129-46e1-8501-8eb37d653ff4/collections
#> 15 https://jscholarship.library.jhu.edu/server/api/core/communities/d74bccd4-4861-4a8e-838f-44273f7e08af/collections
#> 16 https://jscholarship.library.jhu.edu/server/api/core/communities/2c964082-6a00-423a-90a8-8e6af9c837c6/collections
#> 17 https://jscholarship.library.jhu.edu/server/api/core/communities/c5674b33-b5c3-410a-9448-e4831e4142e6/collections
#> 18 https://jscholarship.library.jhu.edu/server/api/core/communities/d9e81d34-b0af-436d-838a-a1df82fa8db3/collections
#> 19 https://jscholarship.library.jhu.edu/server/api/core/communities/d2803f39-e166-4cb5-818a-0a4ddd4cc88a/collections
#> 20 https://jscholarship.library.jhu.edu/server/api/core/communities/83279909-0a80-4e78-9297-66eb37bb82a9/collections
#>                                                                                                   _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/communities/7e9bc42b-4d4a-4738-ad68-e15ad268ba85/logo
#> 2  https://jscholarship.library.jhu.edu/server/api/core/communities/ecec4092-8b82-455a-8215-6ae2825a19e0/logo
#> 3  https://jscholarship.library.jhu.edu/server/api/core/communities/58996331-0750-4d53-8eae-8a2acab3bdf8/logo
#> 4  https://jscholarship.library.jhu.edu/server/api/core/communities/006fccb8-719a-4784-bfda-bd0d5d0754f9/logo
#> 5  https://jscholarship.library.jhu.edu/server/api/core/communities/f02a90eb-5253-4680-a68f-cef222944638/logo
#> 6  https://jscholarship.library.jhu.edu/server/api/core/communities/5a803825-ec1c-4c8a-ab34-4107fa760e40/logo
#> 7  https://jscholarship.library.jhu.edu/server/api/core/communities/55bfbbee-067b-4d25-a53e-7aa59444682a/logo
#> 8  https://jscholarship.library.jhu.edu/server/api/core/communities/0a81e623-437f-496b-b2be-47ae88037d9d/logo
#> 9  https://jscholarship.library.jhu.edu/server/api/core/communities/a33ff8e9-3d70-4f62-9c56-04782f55c09a/logo
#> 10 https://jscholarship.library.jhu.edu/server/api/core/communities/74e02454-1658-403f-b0bf-6d1e992e187b/logo
#> 11 https://jscholarship.library.jhu.edu/server/api/core/communities/338857a5-f097-405c-b5d6-838bfebb7903/logo
#> 12 https://jscholarship.library.jhu.edu/server/api/core/communities/a3466db3-fbef-428a-aabc-349e873c48c6/logo
#> 13 https://jscholarship.library.jhu.edu/server/api/core/communities/dab3dbb2-f683-404e-9012-77d2a22f697c/logo
#> 14 https://jscholarship.library.jhu.edu/server/api/core/communities/7d031f07-a129-46e1-8501-8eb37d653ff4/logo
#> 15 https://jscholarship.library.jhu.edu/server/api/core/communities/d74bccd4-4861-4a8e-838f-44273f7e08af/logo
#> 16 https://jscholarship.library.jhu.edu/server/api/core/communities/2c964082-6a00-423a-90a8-8e6af9c837c6/logo
#> 17 https://jscholarship.library.jhu.edu/server/api/core/communities/c5674b33-b5c3-410a-9448-e4831e4142e6/logo
#> 18 https://jscholarship.library.jhu.edu/server/api/core/communities/d9e81d34-b0af-436d-838a-a1df82fa8db3/logo
#> 19 https://jscholarship.library.jhu.edu/server/api/core/communities/d2803f39-e166-4cb5-818a-0a4ddd4cc88a/logo
#> 20 https://jscholarship.library.jhu.edu/server/api/core/communities/83279909-0a80-4e78-9297-66eb37bb82a9/logo
#>                                                                                                             _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/communities/7e9bc42b-4d4a-4738-ad68-e15ad268ba85/subcommunities
#> 2  https://jscholarship.library.jhu.edu/server/api/core/communities/ecec4092-8b82-455a-8215-6ae2825a19e0/subcommunities
#> 3  https://jscholarship.library.jhu.edu/server/api/core/communities/58996331-0750-4d53-8eae-8a2acab3bdf8/subcommunities
#> 4  https://jscholarship.library.jhu.edu/server/api/core/communities/006fccb8-719a-4784-bfda-bd0d5d0754f9/subcommunities
#> 5  https://jscholarship.library.jhu.edu/server/api/core/communities/f02a90eb-5253-4680-a68f-cef222944638/subcommunities
#> 6  https://jscholarship.library.jhu.edu/server/api/core/communities/5a803825-ec1c-4c8a-ab34-4107fa760e40/subcommunities
#> 7  https://jscholarship.library.jhu.edu/server/api/core/communities/55bfbbee-067b-4d25-a53e-7aa59444682a/subcommunities
#> 8  https://jscholarship.library.jhu.edu/server/api/core/communities/0a81e623-437f-496b-b2be-47ae88037d9d/subcommunities
#> 9  https://jscholarship.library.jhu.edu/server/api/core/communities/a33ff8e9-3d70-4f62-9c56-04782f55c09a/subcommunities
#> 10 https://jscholarship.library.jhu.edu/server/api/core/communities/74e02454-1658-403f-b0bf-6d1e992e187b/subcommunities
#> 11 https://jscholarship.library.jhu.edu/server/api/core/communities/338857a5-f097-405c-b5d6-838bfebb7903/subcommunities
#> 12 https://jscholarship.library.jhu.edu/server/api/core/communities/a3466db3-fbef-428a-aabc-349e873c48c6/subcommunities
#> 13 https://jscholarship.library.jhu.edu/server/api/core/communities/dab3dbb2-f683-404e-9012-77d2a22f697c/subcommunities
#> 14 https://jscholarship.library.jhu.edu/server/api/core/communities/7d031f07-a129-46e1-8501-8eb37d653ff4/subcommunities
#> 15 https://jscholarship.library.jhu.edu/server/api/core/communities/d74bccd4-4861-4a8e-838f-44273f7e08af/subcommunities
#> 16 https://jscholarship.library.jhu.edu/server/api/core/communities/2c964082-6a00-423a-90a8-8e6af9c837c6/subcommunities
#> 17 https://jscholarship.library.jhu.edu/server/api/core/communities/c5674b33-b5c3-410a-9448-e4831e4142e6/subcommunities
#> 18 https://jscholarship.library.jhu.edu/server/api/core/communities/d9e81d34-b0af-436d-838a-a1df82fa8db3/subcommunities
#> 19 https://jscholarship.library.jhu.edu/server/api/core/communities/d2803f39-e166-4cb5-818a-0a4ddd4cc88a/subcommunities
#> 20 https://jscholarship.library.jhu.edu/server/api/core/communities/83279909-0a80-4e78-9297-66eb37bb82a9/subcommunities
#>                                                                                                              _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/communities/7e9bc42b-4d4a-4738-ad68-e15ad268ba85/parentCommunity
#> 2  https://jscholarship.library.jhu.edu/server/api/core/communities/ecec4092-8b82-455a-8215-6ae2825a19e0/parentCommunity
#> 3  https://jscholarship.library.jhu.edu/server/api/core/communities/58996331-0750-4d53-8eae-8a2acab3bdf8/parentCommunity
#> 4  https://jscholarship.library.jhu.edu/server/api/core/communities/006fccb8-719a-4784-bfda-bd0d5d0754f9/parentCommunity
#> 5  https://jscholarship.library.jhu.edu/server/api/core/communities/f02a90eb-5253-4680-a68f-cef222944638/parentCommunity
#> 6  https://jscholarship.library.jhu.edu/server/api/core/communities/5a803825-ec1c-4c8a-ab34-4107fa760e40/parentCommunity
#> 7  https://jscholarship.library.jhu.edu/server/api/core/communities/55bfbbee-067b-4d25-a53e-7aa59444682a/parentCommunity
#> 8  https://jscholarship.library.jhu.edu/server/api/core/communities/0a81e623-437f-496b-b2be-47ae88037d9d/parentCommunity
#> 9  https://jscholarship.library.jhu.edu/server/api/core/communities/a33ff8e9-3d70-4f62-9c56-04782f55c09a/parentCommunity
#> 10 https://jscholarship.library.jhu.edu/server/api/core/communities/74e02454-1658-403f-b0bf-6d1e992e187b/parentCommunity
#> 11 https://jscholarship.library.jhu.edu/server/api/core/communities/338857a5-f097-405c-b5d6-838bfebb7903/parentCommunity
#> 12 https://jscholarship.library.jhu.edu/server/api/core/communities/a3466db3-fbef-428a-aabc-349e873c48c6/parentCommunity
#> 13 https://jscholarship.library.jhu.edu/server/api/core/communities/dab3dbb2-f683-404e-9012-77d2a22f697c/parentCommunity
#> 14 https://jscholarship.library.jhu.edu/server/api/core/communities/7d031f07-a129-46e1-8501-8eb37d653ff4/parentCommunity
#> 15 https://jscholarship.library.jhu.edu/server/api/core/communities/d74bccd4-4861-4a8e-838f-44273f7e08af/parentCommunity
#> 16 https://jscholarship.library.jhu.edu/server/api/core/communities/2c964082-6a00-423a-90a8-8e6af9c837c6/parentCommunity
#> 17 https://jscholarship.library.jhu.edu/server/api/core/communities/c5674b33-b5c3-410a-9448-e4831e4142e6/parentCommunity
#> 18 https://jscholarship.library.jhu.edu/server/api/core/communities/d9e81d34-b0af-436d-838a-a1df82fa8db3/parentCommunity
#> 19 https://jscholarship.library.jhu.edu/server/api/core/communities/d2803f39-e166-4cb5-818a-0a4ddd4cc88a/parentCommunity
#> 20 https://jscholarship.library.jhu.edu/server/api/core/communities/83279909-0a80-4e78-9297-66eb37bb82a9/parentCommunity
#>                                                                                                         _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/communities/7e9bc42b-4d4a-4738-ad68-e15ad268ba85/adminGroup
#> 2  https://jscholarship.library.jhu.edu/server/api/core/communities/ecec4092-8b82-455a-8215-6ae2825a19e0/adminGroup
#> 3  https://jscholarship.library.jhu.edu/server/api/core/communities/58996331-0750-4d53-8eae-8a2acab3bdf8/adminGroup
#> 4  https://jscholarship.library.jhu.edu/server/api/core/communities/006fccb8-719a-4784-bfda-bd0d5d0754f9/adminGroup
#> 5  https://jscholarship.library.jhu.edu/server/api/core/communities/f02a90eb-5253-4680-a68f-cef222944638/adminGroup
#> 6  https://jscholarship.library.jhu.edu/server/api/core/communities/5a803825-ec1c-4c8a-ab34-4107fa760e40/adminGroup
#> 7  https://jscholarship.library.jhu.edu/server/api/core/communities/55bfbbee-067b-4d25-a53e-7aa59444682a/adminGroup
#> 8  https://jscholarship.library.jhu.edu/server/api/core/communities/0a81e623-437f-496b-b2be-47ae88037d9d/adminGroup
#> 9  https://jscholarship.library.jhu.edu/server/api/core/communities/a33ff8e9-3d70-4f62-9c56-04782f55c09a/adminGroup
#> 10 https://jscholarship.library.jhu.edu/server/api/core/communities/74e02454-1658-403f-b0bf-6d1e992e187b/adminGroup
#> 11 https://jscholarship.library.jhu.edu/server/api/core/communities/338857a5-f097-405c-b5d6-838bfebb7903/adminGroup
#> 12 https://jscholarship.library.jhu.edu/server/api/core/communities/a3466db3-fbef-428a-aabc-349e873c48c6/adminGroup
#> 13 https://jscholarship.library.jhu.edu/server/api/core/communities/dab3dbb2-f683-404e-9012-77d2a22f697c/adminGroup
#> 14 https://jscholarship.library.jhu.edu/server/api/core/communities/7d031f07-a129-46e1-8501-8eb37d653ff4/adminGroup
#> 15 https://jscholarship.library.jhu.edu/server/api/core/communities/d74bccd4-4861-4a8e-838f-44273f7e08af/adminGroup
#> 16 https://jscholarship.library.jhu.edu/server/api/core/communities/2c964082-6a00-423a-90a8-8e6af9c837c6/adminGroup
#> 17 https://jscholarship.library.jhu.edu/server/api/core/communities/c5674b33-b5c3-410a-9448-e4831e4142e6/adminGroup
#> 18 https://jscholarship.library.jhu.edu/server/api/core/communities/d9e81d34-b0af-436d-838a-a1df82fa8db3/adminGroup
#> 19 https://jscholarship.library.jhu.edu/server/api/core/communities/d2803f39-e166-4cb5-818a-0a4ddd4cc88a/adminGroup
#> 20 https://jscholarship.library.jhu.edu/server/api/core/communities/83279909-0a80-4e78-9297-66eb37bb82a9/adminGroup
#>                                                                                              _links.href
#> 1  https://jscholarship.library.jhu.edu/server/api/core/communities/7e9bc42b-4d4a-4738-ad68-e15ad268ba85
#> 2  https://jscholarship.library.jhu.edu/server/api/core/communities/ecec4092-8b82-455a-8215-6ae2825a19e0
#> 3  https://jscholarship.library.jhu.edu/server/api/core/communities/58996331-0750-4d53-8eae-8a2acab3bdf8
#> 4  https://jscholarship.library.jhu.edu/server/api/core/communities/006fccb8-719a-4784-bfda-bd0d5d0754f9
#> 5  https://jscholarship.library.jhu.edu/server/api/core/communities/f02a90eb-5253-4680-a68f-cef222944638
#> 6  https://jscholarship.library.jhu.edu/server/api/core/communities/5a803825-ec1c-4c8a-ab34-4107fa760e40
#> 7  https://jscholarship.library.jhu.edu/server/api/core/communities/55bfbbee-067b-4d25-a53e-7aa59444682a
#> 8  https://jscholarship.library.jhu.edu/server/api/core/communities/0a81e623-437f-496b-b2be-47ae88037d9d
#> 9  https://jscholarship.library.jhu.edu/server/api/core/communities/a33ff8e9-3d70-4f62-9c56-04782f55c09a
#> 10 https://jscholarship.library.jhu.edu/server/api/core/communities/74e02454-1658-403f-b0bf-6d1e992e187b
#> 11 https://jscholarship.library.jhu.edu/server/api/core/communities/338857a5-f097-405c-b5d6-838bfebb7903
#> 12 https://jscholarship.library.jhu.edu/server/api/core/communities/a3466db3-fbef-428a-aabc-349e873c48c6
#> 13 https://jscholarship.library.jhu.edu/server/api/core/communities/dab3dbb2-f683-404e-9012-77d2a22f697c
#> 14 https://jscholarship.library.jhu.edu/server/api/core/communities/7d031f07-a129-46e1-8501-8eb37d653ff4
#> 15 https://jscholarship.library.jhu.edu/server/api/core/communities/d74bccd4-4861-4a8e-838f-44273f7e08af
#> 16 https://jscholarship.library.jhu.edu/server/api/core/communities/2c964082-6a00-423a-90a8-8e6af9c837c6
#> 17 https://jscholarship.library.jhu.edu/server/api/core/communities/c5674b33-b5c3-410a-9448-e4831e4142e6
#> 18 https://jscholarship.library.jhu.edu/server/api/core/communities/d9e81d34-b0af-436d-838a-a1df82fa8db3
#> 19 https://jscholarship.library.jhu.edu/server/api/core/communities/d2803f39-e166-4cb5-818a-0a4ddd4cc88a
#> 20 https://jscholarship.library.jhu.edu/server/api/core/communities/83279909-0a80-4e78-9297-66eb37bb82a9
#> 
#> 
#> $`_links`
#> $`_links`$first
#> $`_links`$first$href
#> [1] "https://jscholarship.library.jhu.edu/server/api/core/communities?page=0&size=20"
#> 
#> 
#> $`_links`$self
#> $`_links`$self$href
#> [1] "https://jscholarship.library.jhu.edu/server/api/core/communities"
#> 
#> 
#> $`_links`$`next`
#> $`_links`$`next`$href
#> [1] "https://jscholarship.library.jhu.edu/server/api/core/communities?page=1&size=20"
#> 
#> 
#> $`_links`$last
#> $`_links`$last$href
#> [1] "https://jscholarship.library.jhu.edu/server/api/core/communities?page=2&size=20"
#> 
#> 
#> $`_links`$search
#> $`_links`$search$href
#> [1] "https://jscholarship.library.jhu.edu/server/api/core/communities/search"
#> 
#> 
#> 
#> $page
#> $page$size
#> [1] 20
#> 
#> $page$totalElements
#> [1] 55
#> 
#> $page$totalPages
#> [1] 3
#> 
#> $page$number
#> [1] 0
```

The [DSpace 7 REST Contract
repository](https://github.com/DSpace/RestContract) documents new DSpace
REST API Contract beginning with version 7.0.
