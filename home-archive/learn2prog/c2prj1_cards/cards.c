#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "cards.h"


void assert_card_valid(card_t c) {
  assert(c.value>=2&&c.value<=VALUE_ACE);
  assert(c.suit>=SPADES&&c.suit<=CLUBS);

}

const char * ranking_to_string(hand_ranking_t r) {
  if(r==STRAIGHT_FLUSH)return"STRAIGHT_FLUSH";
  if(r==FOUR_OF_A_KIND)return"FOUR_OF_A_KIND";
  if(r==FULL_HOUSE)return"FULL_HOUSE";
  if(r==FLUSH)return"FLUSH";
  if(r==STRAIGHT)return"STRAIGHT";
  if(r==THREE_OF_A_KIND)return"THREE_OF_A_KIND";
  if(r==TWO_PAIR)return"TWO_PAIR";
  if(r==PAIR)return"PAIR";
  if(r==NOTHING)return"NOTHING";
  return "";
}

char value_letter(card_t c) {
  assert_card_valid(c);
  if(c.value==VALUE_JACK){
    return 'J';
  }else if(c.value==VALUE_QUEEN){
    return 'Q';
  }else if(c.value==VALUE_KING){
    return 'K';
  }else if(c.value==VALUE_ACE){
    return 'A';
  }else if(c.value==10){
    return '0';
  }else {
    return c.value + '0';
  }
}


char suit_letter(card_t c){
  assert_card_valid(c);
  switch(c.suit){
  case SPADES:
    return 's';
  case HEARTS:
    return 'h';
  case DIAMONDS:
    return 'd';
  case CLUBS:
    return 'c';
  default:
    break;
  }
  return 'x';
  
}

void print_card(card_t c) {
  printf("%c""%c",value_letter(c),suit_letter(c));
}

card_t card_from_letters(char value_let, char suit_let) {
  card_t temp;
  switch(value_let){
  case 'K':
    temp.value = VALUE_KING;
    break;
  case 'Q':
    temp.value = VALUE_QUEEN;
    break;
  case 'J':
    temp.value = VALUE_JACK;
    break;
    case 'A':
    temp.value = VALUE_ACE;
    break;
  case '0':
    temp.value = 10;
    break;
  default:
    temp.value = (int)( value_let - '0');
    break;
  }
  switch(suit_let){
  case 's':
    temp.suit = SPADES;
    break;
  case 'h':
    temp.suit = HEARTS;
    break;
  case 'd':
    temp.suit = DIAMONDS;
    break;
  case 'c':
    temp.suit = CLUBS;
    break;
  default:
    break;
  }
  return temp;
}

card_t card_from_num(unsigned c) {
  card_t temp;
  temp.value = c/4+2;
  switch(c%4){
  case SPADES:
    temp.suit = SPADES;
    break;
  case HEARTS:
    temp.suit = HEARTS;
    break;
  case DIAMONDS:
    temp.suit = DIAMONDS;
    break;
  case CLUBS:
    temp.suit = CLUBS;
    break;
  default:
    break;
  }
  return temp;
}
