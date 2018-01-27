% Draw Red Exchange Zone

REZ = Field.RedExchangeZone;

plot([REZ.tl_x REZ.tr_x REZ.br_x REZ.bl_x REZ.tl_x], [REZ.tl_y REZ.tr_y REZ.br_y REZ.bl_y REZ.tl_y], 'r-*');