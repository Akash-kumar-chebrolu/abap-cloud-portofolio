@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight Bookings Interface Entity'
define view entity ZI_AKASH_BOOKINGS
  as select from zakash_bookings
  association [1..1] to ZI_AKASH_CARRIER as _Carrier 
    on $projection.CarrierID = _Carrier.CarrierID
{
  key customer_id as CustomerID,
      flight_name as FlightName,
      
      // Extract first 2 letters as Carrier ID (e.g. 'AA' from 'AA1234')
      substring(flight_name, 1, 2) as CarrierID,
      
      currency_code as CurrencyCode,
      flight_price  as FlightPrice,
      
      // Calculated Field / Case Statement
      case 
        when flight_price > 1000 then 'VIP / Business'
        when flight_price > 500  then 'Premium Economy'
        else 'Standard Economy'
      end as BookingCategory,

      // Expose Association for path expressions
      _Carrier
}
