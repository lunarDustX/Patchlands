/// @description draw_a_card
var cards_left = 0;
for (var i = 0; i < NUM_OF_LAND; i++) {
	cards_left += o_game.cards[i];
}

if (cards_left < 1) exit;

var ran = irandom_range(1, cards_left);
var type = 0;
var num = o_game.cards[type];
while (num < ran) {
	type++;
	num += o_game.cards[type];
}
o_game.cards[type]--;


var card = instance_create_layer(0, 0, "UI", o_card);
card.type = type;
show_message(string(type));

switch (type) {
	case land.forest:
		card.sprite_index = s_card_forest;
	break;
	
	case land.snow:
		card.sprite_index = s_card_snow;
	break;
	
	case land.lava:
		card.sprite_index = s_card_lava;
	break;
}

//return type;