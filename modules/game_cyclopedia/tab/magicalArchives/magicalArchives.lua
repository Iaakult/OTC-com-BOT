-- Carrega os arquivos de suporte
dofile('json/magical_const')
dofile('json/magical_archive')

local UI = nil

function showMagicalArchives()
    UI = g_ui.loadUI("magicalArchives", contentContainer)
    
    if not UI then
        g_logger.error("Failed to load magicalArchives UI from magicalArchives.otui")
        return
    end
    
    UI:show()
    controllerCyclopedia.ui.CharmsBase:setVisible(false)
    controllerCyclopedia.ui.GoldBase:setVisible(false)
    controllerCyclopedia.ui.BestiaryTrackerButton:setVisible(false)
    if g_game.getClientVersion() >= 1410 then
        controllerCyclopedia.ui.CharmsBase1410:setVisible(false)
    end
    
    -- Define o painel visível para Magical Archives
    VisibleCyclopediaPanel = UI
    
    -- Inicializa e mostra a lista de spells
    MagicalArchive.showSpellList()
end

