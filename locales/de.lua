local Translations = {
    error = {
        ["invalid_job"] = "Ich denke ich Arbeite hier nicht...",
        ["invalid_items"] = "Du hast nicht die korrekten Gegenstände!",
        ["no_items"] = "Du hast keine Gegenstände!",
    },
    progress = {
        ["pick_grapes"] = "Sammle Weintrauben ..",
        ["process_grapes"] = "Verarbeite Weintrauben ..",
    },
    task = {
        ["start_task"] = "[E] zum Starten",
        ["load_ingrediants"] = "[E] Zutaten laden",
        ["wine_process"] = "[E] Starte den Prozess",
        ["get_wine"] = "[E] Wein nehmen",
        ["make_grape_juice"] = "[E] Mache Wein",
        ["countdown"] = "Zeit übrig %{time}",
        ['cancel_task'] = "Du hast die Aufgabe abgebrochen"
    }
}

if GetConvar('qb_locale', 'en') == 'de' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
