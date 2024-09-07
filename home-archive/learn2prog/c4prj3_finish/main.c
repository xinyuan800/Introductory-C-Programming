#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <ctype.h>
#include "cards.h"
#include "deck.h"
#include "eval.h"
#include "future.h"
#include "input.h"



int main(int argc, char ** argv) {
  //YOUR CODE GOES HERE
  if(argc < 2){
    fprintf(stderr, "Usage: %s <inputfile>\n", argv[0]);
    return EXIT_FAILURE;
  }
    FILE * f = fopen(argv[1], "r");
    if(f == NULL){
      fprintf(stderr, "Could not open file %s\n", argv[1]);
      return EXIT_FAILURE;
    }
    int num_trials = 10000;
    if(argc ==3){
         num_trials = atoi(argv[2]);
    }

    future_cards_t * fc = malloc(sizeof(*fc));
    fc->decks = NULL;
    fc->n_decks = 0;
    size_t n_hands = 0;
    deck_t ** hands = read_input(f, &n_hands, fc);
    deck_t * deck = build_remaining_deck(hands, n_hands);
    unsigned * wins = malloc((n_hands+1)*sizeof(*wins));
    for(int i = 0; i < n_hands+1; i++){
      wins[i] = 0;
    }
    for(int i = 0; i < num_trials; i++) {
        shuffle(deck);
        future_cards_from_deck(deck, fc);
        int winner = 0;
        int tie = 0;
        for (size_t j = 1; j < n_hands; j++) {
            if (compare_hands(hands[j], hands[winner]) > 0) {
                winner = j;
                tie = 0;
            } else if (compare_hands(hands[j], hands[winner]) == 0) {
                tie = 1;
            }
        }
        if (tie == 0) {
            wins[winner]++;
        } else {
            wins[n_hands]++;
        }
    }
    for (int i = 0; i < n_hands; i++) {
        printf("Hand %d won %u / %u times (%.2f%%)\n", i, wins[i], num_trials, 100 * (float) wins[i] / num_trials);
    }
    printf("And there were %u ties\n", wins[n_hands]);

    //free all the memory
    fclose(f);
    free(fc);
    for(int i = 0; i < n_hands; i++){
      free_deck(hands[i]);
    }
    free(hands);
    free_deck(deck);
    free(wins);
  return EXIT_SUCCESS;
}

