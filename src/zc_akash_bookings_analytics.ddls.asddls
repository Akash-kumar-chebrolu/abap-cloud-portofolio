@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Carrier Revenue Analytics'
define view entity ZC_AKASH_BOOKINGS_ANALYTICS
  as select from ZI_AKASH_BOOKINGS
{
  key CarrierID,
      _Carrier.CarrierName as CarrierName,
      
      count(distinct CustomerID) as TotalBookings,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      sum(FlightPrice) as TotalRevenue,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      avg(FlightPrice as abap.curr(16,2)) as AveragePrice,

      CurrencyCode
}
group by
  CarrierID,
  _Carrier.CarrierName,
  CurrencyCode
