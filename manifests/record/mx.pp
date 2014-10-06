# == Define: dns::record::mx
#
# Wrapper for dns::record to set an XM record.
#
define dns::record::mx (
  $zone,
  $data,
  $ttl = '',
  $preference = '0',
  $host = $name ) {

  dns::record { $name:
    zone       => $zone,
    host       => $host,
    ttl        => $ttl,
    record     => 'MX',
    preference => $preference,
    data       => "${data}.",
    order      => 2
  }
}
