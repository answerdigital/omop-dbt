{{ config(
  materialized='view'
) }}

/*
| Syntax      | Description | Test Text     |
| :---        |    :----:   |          ---: |
| Header      | Title       | Here's this   |
| Paragraph   | Text        | And more      |

*/

with patients as (

    select * from {{ ref('v_observation_period') }}

),
pat as (

    select
        *
    from patients

)
select * from pat