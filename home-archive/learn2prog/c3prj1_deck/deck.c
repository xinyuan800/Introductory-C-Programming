#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "deck.h"
void print_hand(deck_t * hand){
for(int i=0;i<hand->n_cards;i++){
  print_card(*(hand->cards[i]));
  printf(" ");
}
}

int deck_contains(deck_t * d, card_t c) {
    for(int i=0;i<d->n_cards;i++){
        if((d->cards[i]->value==c.value)&&(d->cards[i]->suit==c.suit)){
        return 1;
        }
    }
  return 0;
}

void shuffle(deck_t * d){
    card_t *temp;
    int random;
    for(int i=0;i<d->n_cards;i++){
        random=rand()%(d->n_cards);
        temp=d->cards[i];
        d->cards[i]=d->cards[random];
        d->cards[random]=temp;
    }
}

void assert_full_deck(deck_t * d) {
    card_t c;
    for(int i=0;i<52;i++){
        c=card_from_num(i);
        assert(deck_contains(d,c));
    }

}

void add_card_to(deck_t * deck, card_t c){
    deck->cards=realloc(deck->cards,(deck->n_cards+1)*sizeof(*deck->cards));
    deck->cards[deck->n_cards]=malloc(sizeof(*deck->cards[deck->n_cards]));
    deck->n_cards++;
    *deck->cards[deck->n_cards-1] = c;
}

card_t * add_empty_card(deck_t * deck){
    card_t c={0,0};
    add_card_to(deck,c);
    return deck->cards[deck->n_cards-1];
}

deck_t * make_deck_exclude(deck_t * excluded_cards){
    deck_t * deck=malloc(sizeof(*deck));
    deck->cards=NULL;
    deck->n_cards=0;
    card_t c;
    for(int i=0;i<52;i++){
        c=card_from_num(i);
        if(deck_contains(excluded_cards,c)){
            continue;
        }
        add_card_to(deck,c);
    }
    return deck;
}

deck_t * build_remaining_deck(deck_t ** hands, size_t n_hands){
    deck_t * deck=malloc(sizeof(*deck));
    deck->cards=NULL;
    deck->n_cards=0;
    for(int i=0;i<n_hands;i++){
        for(int j=0;j<hands[i]->n_cards;j++){
            add_card_to(deck,*(hands[i]->cards[j]));
        }
    }
    deck_t * remaining_deck=make_deck_exclude(deck);
    free_deck(deck);
    return remaining_deck;
}

void free_deck(deck_t * deck){
    for(int i=0;i<deck->n_cards;i++){
        free(deck->cards[i]);
    }
    free(deck->cards);
    free(deck);
}
