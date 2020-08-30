function onLoad()
    -- Configuration
    target_card = getObjectFromGUID("a64608")

    variables = {
        player_name = "",
        health = 0,
        money = 0,
        inventory = ""
    }
end

function updateInventoryCard()

    target_card.setName(
        variables.player_name .. " | "
        .. variables.health .. " ❤ | "
        .. variables.money .. "sc"
    )
    target_card.setDescription(variables.inventory)
end

function onUiChange(player, value, id)
    variables[id] = value

    updateInventoryCard()
end

function onPlayerChangeColor(player_color)
    variables.player_name = Player[self.getColorTint():toString()].steam_name

    updateInventoryCard()
end