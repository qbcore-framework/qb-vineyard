local Translations = {
    error = {
        ["invalid_job"] = "Acho que não trabalho aqui..",
        ["invalid_items"] = "Não tens os items corretos!",
        ["no_items"] = "Não tens os items necessários!",
    },
    progress = {
        ["pick_grapes"] = "A Apanhar Uvas..",
        ["process_grapes"] = "A Processar Uvas..",
    },
    task = {
        ["start_task"] = "[E] Para Começar",
        ["load_ingrediants"] = "[E] Preparar Ingredientes",
        ["wine_process"] = "[E] Começar Processo Do Vinho",
        ["get_wine"] = "[E] Obter Vinho",
        ["make_grape_juice"] = "[E] Fazer Sumo De Uva",
        ["countdown"] = "Tempo Restante %{time}s",
        ['cancel_task'] = "Cancelaste a tarefa"
    }
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})
