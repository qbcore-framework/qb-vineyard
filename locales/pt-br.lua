local Translations = {
    error = {
        ["invalid_job"] = "Acho que não trabalho aqui...",
        ["invalid_items"] = "Você não tem os itens corretos!",
        ["no_items"] = "Você não possui itens!",
    },
    progress = {
        ["pick_grapes"] = "Colhendo uvas...",
        ["process_grapes"] = "Processando uvas...",
    },
    task = {
        ["start_task"] = "[E] Para Iniciar",
        ["load_ingrediants"] = "[E] Carregar Ingredientes",
        ["wine_process"] = "[E] Iniciar Processo de Vinificação",
        ["get_wine"] = "[E] Pegar Vinho",
        ["make_grape_juice"] = "[E] Fazer Suco de Uva",
        ["countdown"] = "Tempo Restante: %{time}s",
        ['cancel_task'] = "Você cancelou a tarefa"
    },
    text = {
        ["start_shift"] = "Você começou seu turno na vinícola!",
        ["end_shift"] = "Seu turno na vinícola terminou!",
        ["valid_zone"] = "Zona Válida!",
        ["invalid_zone"] = "Zona Inválida!",
        ["zone_entered"] = "Entrou na Zona: %{zone}",
        ["zone_exited"] = "Saiu da Zona: %{zone}",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
