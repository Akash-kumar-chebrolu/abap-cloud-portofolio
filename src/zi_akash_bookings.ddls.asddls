@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View Entity for Flight Bookings'
define view entity ZI_AKASH_BOOKINGS
  as select from zakash_bookings
{
  key customer_id   as CustomerID,
      flight_name   as FlightName,
      currency_code as CurrencyCode,
      
      @Semantics.amount.currencyCode: 'CurrencyCode'
      flight_price  as FlightPrice
}
