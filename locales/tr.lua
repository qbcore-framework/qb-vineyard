local Translations = {
    error = {
        ["invalid_job"] = "Burada çalıştığımı sanmıyorum...",
        ["invalid_items"] = "Doğru itemlere sahip değilsin!",
        ["no_items"] = "Herhangi bir iteminiz yok!",
    },
    progress = {
        ["pick_grapes"] = "Üzüm toplanıyor ..",
        ["process_grapes"] = "Üzüm İşleniyor ..",
    },
    task = {
        ["start_task"] = "[E] Başla",
        ["load_ingrediants"] = "[E] Malzemeleri Yükle",
        ["wine_process"] = "[E] Şarap İşlemeye Başla",
        ["get_wine"] = "[E] Şarap Al",
        ["make_grape_juice"] = "[E] Üzüm Suyu Yap",
        ["countdown"] = "Kalan süre %{time}s",
        ['cancel_task'] = "Görevi iptal ettiniz"
    }
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})
