@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Airline Carrier Interface View'
define view entity ZI_AKASH_CARRIER
  as select from /dmo/carrier
{
  key carrier_id    as CarrierID,
      name          as CarrierName,
      currency_code as CurrencyCode
}
