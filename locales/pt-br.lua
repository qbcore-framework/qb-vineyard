local Translations = {
    error = {
        ["invalid_job"] = "Acho que não trabalho aqui...",
        ["invalid_items"] = "Você não possui os itens corretos!",
        ["no_items"] = "Você não possui nenhum item!",
    },
    progress = {
        ["pick_grapes"] = "Colhendo uvas...",
        ["process_grapes"] = "Processando uvas...",
    },
    task = {
        ["start_task"] = "[E] Para Começar",
        ["load_ingrediants"] = "[E] Carregar Ingredientes",
        ["wine_process"] = "[E] Iniciar Processo de Vinho",
        ["get_wine"] = "[E] Pegar Vinho",
        ["make_grape_juice"] = "[E] Fazer Suco de Uva",
        ["countdown"] = "Tempo Restante: %{time}s",
        ['cancel_task'] = "Você cancelou a tarefa"
    },
    text = {
        ["start_shift"] = "Você iniciou seu turno na vinícola!",
        ["end_shift"] = "Seu turno na vinícola acabou!",
        ["valid_zone"] = "Zona Válida!",
        ["invalid_zone"] = "Zona Inválida!",
        ["zone_entered"] = "Entrou na Zona %{zone}",
        ["zone_exited"] = "Saiu da Zona %{zone}",
    }
}

if GetConvar('qb_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
