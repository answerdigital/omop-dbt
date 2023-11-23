/*
| Syntax      | Description | Test Text     |
| :---        |    :----:   |          ---: |
| Header      | Title       | Here's this   |
| Paragraph   | Text        | And more      |

*/



with patients as (

    select * from {{ ref('v_person') }}

),
pat as (

    select
        person_id,
        sex

    from patients

)
select * from pat