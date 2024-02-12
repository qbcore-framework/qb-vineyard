local Translations = {
    error = {
        ["invalid_job"] = "Jeg tror ikke, jeg arbejder her...",
        ["invalid_items"] = "Du har ikke de korrekte genstande!",
        ["no_items"] = "Du har ingen genstande!",
    },
    progress = {
        ["pick_grapes"] = "Plukker druer...",
        ["process_grapes"] = "Behandler druer...",
    },
    task = {
        ["start_task"] = "[E] For at Starte",
        ["load_ingrediants"] = "[E] Indlæs Ingredienser",
        ["wine_process"] = "[E] Start Vinfremstilling",
        ["get_wine"] = "[E] Få Vin",
        ["make_grape_juice"] = "[E] Lav Druemost",
        ["countdown"] = "Tid tilbage: %{time}s",
        ['cancel_task'] = "Du har annulleret opgaven"
    },
    text = {
        ["start_shift"] = "Du har påbegyndt din vagt i vingården!",
        ["end_shift"] = "Din vagt i vingården er afsluttet!",
        ["valid_zone"] = "Gyldig Zone!",
        ["invalid_zone"] = "Ugyldig Zone!",
        ["zone_entered"] = "Zone indtastet: %{zone}",
        ["zone_exited"] = "Zone forladt: %{zone}",
    }
}

if GetConvar('qb_locale', 'en') == 'da' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end