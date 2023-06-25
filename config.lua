Config = {}

-- Framework you're using
-- options: "esx"
Config.framework = "esx"

Config.inviteRange = 10.0
-- time in seconds for the invite to expire
Config.inviteExpire = 15

Config.Keybinds = {}
Config.Keybinds.invite = {
    padIndex = 0,
    control = 58,
    name = "INPUT_THROW_GRENADE"
}
Config.Keybinds.exitGarage = {
    padIndex = 0,
    control = 87,
    name = "INPUT_VEH_FLY_THROTTLE_UP"
}
Config.Keybinds.interact = {
    padIndex = 0,
    control = 38,
    name = "INPUT_PICKUP"
}

Config.VehicleBlacklist = {
    classes = {
        10, 11, 12, 14, 15, 16, 17, 18, 19, 20, 21
    },
    models = {
        -- Put any vehicle hash in here, make sure it is a string, and an output
        -- of GetEntityModel (https://docs.fivem.net/natives/?_0x9F47B058362C84B5)

        -- For example:
        2069146067, -- Oppressor MK2
        -845961253, -- Liberator
    }
}

Config.entranceTransition = 500
-- the way for the menu to show up,
-- options: "walk", "keypress"
Config.interactMode = "keypress"
-- the way players get listed in menus
-- options: "name", "id", "both"
Config.playerTag = "both"

Config.points = {}
Config.points.entrance = {
    viewDistance = 10.0,
    -- this is only used if Config.interactMode is set to "keypress"
    interact = Config.Keybinds.interact,
    marker = {
        type = 1,
        size = vec3(.8, .8, 1.0),
        vehicleSize = 3,
        offset = vec3(0, 0, -1),
        rotation = vec3(0, 0, 0),
        color = {
            r = 0,
            g = 192,
            b = 255,
            a = 100
        },
        bob = false,
        faceCamera = false
    }
}
-- the in-property point is set as the same
-- as the entrance point, if you'd like to
-- customize this you can do that
Config.points.property = Config.points.entrance

Config.blips = {
    house = {
        owner = {
            sprite = 40,
            color = 2,
        },
        member = {
            sprite = 40,
            color = 3,
            short = true
        },
        renter = {
            sprite = 40,
            color = 5,
        },
    },
    warehouse = {
        owner = {
            sprite = 473,
            color = 2,
        },
        member = {
            sprite = 473,
            color = 3,
            short = true
        },
        renter = {
            sprite = 473,
            color = 5,
        },
    },
    office = {
        owner = {
            sprite = 475,
            color = 2,
        },
        member = {
            sprite = 475,
            color = 3,
            short = true
        },
        renter = {
            sprite = 475,
            color = 5,
        },
    },
    garage = {
        owner = {
            sprite = 357,
            color = 2,
        },
        member = {
            sprite = 357,
            color = 3,
            short = true
        },
        renter = {
            sprite = 357,
            color = 5,
        },
    },
}
