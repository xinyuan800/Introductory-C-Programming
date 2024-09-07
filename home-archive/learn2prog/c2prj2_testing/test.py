import random

# 创建扑克牌
suits = ['c', 'd', 'h', 's']  # 花色：梅花(c), 方块(d), 红桃(h), 黑桃(s)
values = ['2', '3', '4', '5', '6', '7', '8', '9', '0', 'J', 'Q', 'K', 'A']  # 牌值：2到A (10用0表示)

# 生成整副扑克牌
deck = [value + suit for value in values for suit in suits]

# 函数生成一对随机手牌和公共牌
def generate_hand():
    # 从牌堆中随机抽取9张牌
    hand = random.sample(deck, 9)
    # 前两张是第一手牌玩家的手牌
    player1_hand = ' '.join(hand[:2])
    # 接下来两张是第二手牌玩家的手牌
    player2_hand = ' '.join(hand[2:4])
    # 剩下的五张是公共牌
    community_cards = ' '.join(hand[4:])
    return f"{player1_hand} {community_cards}; {player2_hand} {community_cards}"

# 生成1000个样例
with open('tests.txt', 'w') as f:
    for _ in range(2000):
        f.write(generate_hand() + '\n')

print("随机样例生成完毕，已保存至 'random_hands.txt'.")
