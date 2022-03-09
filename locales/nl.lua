local Translations = {
    error = {
        ["invalid_job"] = "Ik denk niet dat ik hier werk...",
        ["invalid_items"] = "Je hebt niet de juiste items!",
        ["no_items"] = "Je hebt geen items!",
    },
    progress = {
        ["pick_grapes"] = "Druiven plukken ..",
        ["process_grapes"] = "Druiven verwerken ..",
    },
    task = {
        ["start_task"] = "[E] Om te beginnen",
        ["load_ingrediants"] = "[E] Laad ingrediënten",
        ["wine_process"] = "[E] Wijnproces starten",
        ["get_wine"] = "[E] Haal wijn",
        ["make_grape_juice"] = "[E] Druivensap maken",
        ["countdown"] = "Resterende tijd %{time}s",
        ['cancel_task'] = "Je hebt de taak geannuleerd"
    }
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})