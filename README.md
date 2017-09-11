authors: Nate McGregor, David Hale

| spec                                    | input                                  | output |
|-----------------------------------------|----------------------------------------|--------|
| will return volume                      | dimensions: 2,3,4                      |        |
| will return cost                        | dimensions: 2,3,4 dis/spd: 20,'air'    |        |
| will return cost with distance          | dimensions: 2,3,4 dis/spd: 20,'ground' |        |
| will return cost with distance below 20 | dimensions: 2,3,4 dis/spd: 17,'ground' |        |
|                                         |                                        |        |
