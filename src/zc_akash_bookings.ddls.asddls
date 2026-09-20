@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight Bookings List'
@UI.headerInfo: { typeName: 'Booking', typeNamePlural: 'Bookings' }
define view entity ZC_AKASH_BOOKINGS
  as select from ZI_AKASH_BOOKINGS
{
  @UI.facet: [ { id:            'Booking',
                 purpose:       #STANDARD,
                 type:          #IDENTIFICATION_REFERENCE,
                 label:         'Booking Details',
                 position:      10 } ]

  @UI.lineItem: [ { position: 10, label: 'Customer ID' } ]
  @UI.selectionField: [ { position: 10 } ]
  @UI.identification: [ { position: 10 } ]
  key CustomerID,

  @UI.lineItem: [ { position: 20, label: 'Flight Name' } ]
  @UI.selectionField: [ { position: 20 } ]
  @UI.identification: [ { position: 20 } ]
  FlightName,

  @UI.lineItem: [ { position: 30, label: 'Currency' } ]
  CurrencyCode,

  @UI.lineItem: [ { position: 40, label: 'Ticket Price' } ]
  @UI.identification: [ { position: 40 } ]
  FlightPrice
}
