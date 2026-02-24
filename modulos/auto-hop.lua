-- ===========================================
-- MÓDULO: AUTO HOP
-- ===========================================
return function(UI)
    -- Criar aba AUTO HOP
    if not UI.Tabs.AutoHop then
        UI.Tabs.AutoHop = UI.Window:AddTab({ Title = "Auto Hop", Icon = "rotate-cw" })
    end
    
    local tempo = 120
    local ativo = false
    
    -- Toggle
    UI.Tabs.AutoHop:AddToggle("autoHop_toggle", {
        Title = "⚡ Auto Hop",
        Default = false
    }):OnChanged(function(v)
        ativo = v
        print("Auto Hop:", v and "ON" or "OFF")
        UI.Fluent:Notify({
            Title = v and "✅ Ativado" or "❌ Desativado",
            Content = "Auto Hop " .. (v and "ligado" or "desligado"),
            Duration = 3
        })
    end)
    
    -- Input de tempo
    UI.Tabs.AutoHop:AddInput("tempo_input", {
        Title = "⏱️ Intervalo (segundos)",
        Default = "120",
        Numeric = true,
        Callback = function(valor)
            tempo = tonumber(valor) or 120
            print("⏱️ Tempo:", tempo)
        end
    })
    
    -- Botão manual
    UI.Tabs.AutoHop:AddButton({
        Title = "🚀 Pular Agora",
        Description = "Executa uma vez",
        Callback = function()
            print("🔄 Pulando servidor...")
            UI.Fluent:Notify({
                Title = "🔄 Auto Hop",
                Content = "Procurando servidor...",
                Duration = 3
            })
        end
    })
    
    print("✅ Módulo auto-hop carregado")
end
