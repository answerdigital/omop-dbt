/*
| Syntax      | Description | Test Text     |
| :---        |    :----:   |          ---: |
| Header      | Title       | Here's this   |
| Paragraph   | Text        | And more      |

*/

with patients as (

    select * from {{ ref('stg_patient') }}

),
pat as (

    select
        min(ob_date) as min_date,
        max(ob_date) as max_date

    from patients

)
select * from pat