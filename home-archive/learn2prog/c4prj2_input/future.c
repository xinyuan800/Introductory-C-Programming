//
// Created by Wang on 2024/9/5.
//
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "future.h"

void add_future_card(future_cards_t * fc, size_t index, card_t * ptr){
	if (fc->n_decks < (index + 1)) {
        fc->n_decks = index + 1;
        fc->decks = realloc(fc->decks, fc->n_decks * sizeof(*(fc->decks)));
        (fc->decks)[index].cards = NULL;
        (fc->decks)[index].n_cards = 0;
    }

    deck_t *deck = &(fc->decks)[index];
    deck->n_cards += 1;
    deck->cards = realloc(deck->cards, deck->n_cards * sizeof(*(deck->cards)));
    deck->cards[deck->n_cards - 1] = ptr;
        }

void future_cards_from_deck(deck_t * deck, future_cards_t * fc){
	if (deck->n_cards < fc->n_decks) {
    fprintf(stderr, "deck card number is wrong!\n");
    exit(EXIT_FAILURE);
  }
  for (size_t i = 0; i < fc->n_decks; i++) {
    card_t *real_card = (deck->cards)[i];
    deck_t * deck = &(fc->decks)[i];
    for (size_t j = 0; j < deck->n_cards; j++) {
      card_t * future_card = (deck->cards)[j];
      *future_card = *real_card;
    }
  }
}
