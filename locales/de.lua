local Translations = {
    error = {
        ["invalid_job"] = "Ich glaube nicht, dass ich hier arbeite...",
        ["invalid_items"] = "Du hast nicht die richtigen Gegenstände!",
        ["no_items"] = "Du hast keine Gegenstände!",
    },
    progress = {
        ["pick_grapes"] = "Trauben pflücken...",
        ["process_grapes"] = "Trauben verarbeiten...",
    },
    task = {
        ["start_task"] = "[E] Um zu starten",
        ["load_ingrediants"] = "[E] Zutaten laden",
        ["wine_process"] = "[E] Weinherstellung starten",
        ["get_wine"] = "[E] Wein nehmen",
        ["make_grape_juice"] = "[E] Wein herstellen",
        ["countdown"] = "Verbleibende Zeit %{time}s",
        ['cancel_task'] = "Du hast die Aufgabe abgebrochen",
    },
    text = {
        ["start_shift"] = "Du hast deine Schicht im Weingut begonnen!",
        ["end_shift"] = "Deine Schicht im Weingut ist beendet!",
        ["valid_zone"] = "Gültige Zone!",
        ["invalid_zone"] = "Ungültige Zone!",
        ["zone_entered"] = "%{zone}-Zone betreten",
        ["zone_exited"] = "%{zone}-Zone verlassen",
    }
}

if GetConvar('qb_locale', 'en') == 'de' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
