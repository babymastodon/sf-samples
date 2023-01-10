--en_2lis_11_v_itm
SELECT
  {{ dbt_utils.star(ref('en_2lis_11_v_itm'), relation_alias='main') }}

  ,ca.ADDRESS
  ,ca.CITY
  ,ca.CLIENT
  ,ca.COUNTRY
  ,ca.CREATED_BY as customer_created_by
  ,ca.CREATED_ON as customer_created_on
  ,ca.CURRENCY_OF_SALES
  --,ca.CUSTOMER
  ,ca.INDUSTRY
  ,ca.LANGUAGE_KEY
  ,ca.LEGAL_STATUS
  ,ca.NATURAL_PERSON
  ,ca.POSTAL_CODE
  ,ca.REGION
  ,ca.STREET
  ,ca.TELEPHONE_1
  ,ca.TAX_JURISDICTION
  ,ca.EMPLOYEE
  ,ca.NAME
FROM 
  {{ref('en_2lis_11_v_itm')}} main
  left outer join {{ref('en_0customer_attr')}}  ca on main.customer= ca.customer
