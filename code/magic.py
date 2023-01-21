import random

import pygame

from settings import *


class MagicPlayer:
    def __init__(self, animation_player):
        self.animation_player = animation_player
        self.sounds = {
            "heal": pygame.mixer.Sound("../audio/heal.wav"),
            "flame": pygame.mixer.Sound("../audio/Fire.wav"),
        }

    def heal(self, player, strength, cost, groups):
        if player.energy >= cost:
            self.sounds["heal"].play()
            player.health += strength
            player.energy -= cost
            if player.health >= player.stats["health"]:
                player.health = player.stats["health"]

            self.animation_player.create_particles("aura", player.rect.center, groups)
            self.animation_player.create_particles(
                "heal", player.rect.center + pygame.math.Vector2(0, -60), groups
            )

    def flame(self, player, strength, cost, groups):
        if player.energy >= cost:
            self.sounds["flame"].play()

            player.energy -= cost
            status = player.status.split("_")[0]

            if status == "right":
                direction = pygame.math.Vector2(1, 0)
            elif status == "left":
                direction = pygame.math.Vector2(-1, 0)
            elif status == "up":
                direction = pygame.math.Vector2(0, -1)
            else:
                direction = pygame.math.Vector2(0, 1)

            for i in range(1, 6):
                if direction.x:  # horizontal
                    offset_x = (direction.x * i) * TILESIZE
                    x = (
                        player.rect.centerx
                        + offset_x
                        + random.randint(-TILESIZE // 3, TILESIZE // 3)
                    )
                    y = player.rect.centery + random.randint(
                        -TILESIZE // 3, TILESIZE // 3
                    )
                    self.animation_player.create_particles("flame", (x, y), groups)

                else:  # vertical
                    offset_y = (direction.y * i) * TILESIZE
                    y = (
                        player.rect.centery
                        + offset_y
                        + random.randint(-TILESIZE // 3, TILESIZE // 3)
                    )
                    x = player.rect.centerx + random.randint(
                        -TILESIZE // 3, TILESIZE // 3
                    )
                    self.animation_player.create_particles("flame", (x, y), groups)
