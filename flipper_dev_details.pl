use strict;
use warnings;
use USB::LibUSB;

# Initialize
my $usb = USB::LibUSB->new();

# Find the Flipper Zero device attached to USB
my $dev = $usb->find_device(0x1209, 0xBABE);
if (!$dev) {
    die "Flipper Zero device not found";
}

# Get device details
my $manufacturer = $dev->manufacturer();
my $product = $dev->product();
my $serial_number = $dev->serial_number();

# Print device details
print "Manufacturer: $manufacturer\n";
print "Product: $product\n";
print "Serial Number: $serial_number\n";
