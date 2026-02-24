-- ===========================================
-- MÓDULO: TESTE-MSG
-- ===========================================
return function(UI)
    -- Criar aba TESTE
    if not UI.Tabs.Teste then
        UI.Tabs.Teste = UI.Window:AddTab({ Title = "TESTE", Icon = "test-tube" })
    end
    
    -- Toggle teste-msg
    UI.Tabs.Teste:AddToggle("teste_msg", {
        Title = "📢 teste-msg",
        Default = false
    }):OnChanged(function(v)
        if v then
            print("🟢 TESTE ATIVADO!")
            UI.Fluent:Notify({
                Title = "✅ TESTE",
                Content = "Ativado!",
                Duration = 3
            })
        else
            print("🔴 TESTE DESATIVADO!")
        end
    end)
    
    print("✅ Módulo teste-msg carregado")
end
