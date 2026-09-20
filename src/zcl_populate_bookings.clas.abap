CLASS zcl_populate_bookings DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_populate_bookings IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lt_bookings TYPE TABLE OF zakash_bookings.

    lt_bookings = VALUE #(
      ( customer_id = '0000000001' flight_name = 'Air India' currency_code = 'INR' flight_price = '12500.00' )
      ( customer_id = '0000000002' flight_name = 'Emirates'  currency_code = 'USD' flight_price = '850.50' )
      ( customer_id = '0000000003' flight_name = 'Lufthansa' currency_code = 'EUR' flight_price = '720.00' )
    ).

    DELETE FROM zakash_bookings.
    INSERT zakash_bookings FROM TABLE @lt_bookings.

    out->write( 'Sample flight booking data inserted successfully!' ).
  ENDMETHOD.
ENDCLASS.
