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
        id as person_id,
        CASE WHEN gender ='M' THEN 8507
             WHEN gender ='F' THEN 8532
        END as sex

    from patients

)
select * from pat