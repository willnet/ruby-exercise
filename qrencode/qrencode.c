#include "ruby.h"
#include <qrencode.h>

static VALUE cQRcode;

void Init_qrencode(void) {
  cQRcode = rb_define_class("QRcode", rb_cObject);
}
