-- Performance Monitor Module
-- Mede FPS, sprites carregados, tiles desenhados, etc.

PerformanceMonitor = {
    window = nil,
    enabled = false,
    updateEvent = nil,
    
    -- Estatísticas
    stats = {
        fps = 0,
        avgFps = 0,
        minFps = 999,
        maxFps = 0,
        
        spriteCacheSize = 0,
        spriteCacheHits = 0,
        spriteCacheMisses = 0,
        
        tilesDrawn = 0,
        tilesCulled = 0,
        
        drawCalls = 0,
        
        memoryUsage = 0
    },
    
    fpsHistory = {},
    maxHistorySize = 60  -- 60 frames de história
}

function PerformanceMonitor.init()
    g_ui.importStyle('performance_monitor')
    
    PerformanceMonitor.window = g_ui.createWidget('PerformanceWindow', rootWidget)
    PerformanceMonitor.window:hide()
    
    PerformanceMonitor.enabled = false
    
    print('[PerformanceMonitor] Module initialized! Press Ctrl+U to toggle.')
end

function PerformanceMonitor.terminate()
    PerformanceMonitor.disable()
    
    if PerformanceMonitor.window then
        PerformanceMonitor.window:destroy()
        PerformanceMonitor.window = nil
    end
end

function PerformanceMonitor.toggle()
    if PerformanceMonitor.enabled then
        PerformanceMonitor.disable()
    else
        PerformanceMonitor.enable()
    end
end

function PerformanceMonitor.enable()
    if PerformanceMonitor.enabled then
        return
    end
    
    PerformanceMonitor.enabled = true
    PerformanceMonitor.window:show()
    
    -- Resetar estatísticas
    PerformanceMonitor.stats.minFps = 999
    PerformanceMonitor.stats.maxFps = 0
    PerformanceMonitor.fpsHistory = {}
    
    -- Atualizar a cada 100ms
    PerformanceMonitor.updateEvent = scheduleEvent(PerformanceMonitor.update, 100)
end

function PerformanceMonitor.disable()
    if not PerformanceMonitor.enabled then
        return
    end
    
    PerformanceMonitor.enabled = false
    PerformanceMonitor.window:hide()
    
    if PerformanceMonitor.updateEvent then
        removeEvent(PerformanceMonitor.updateEvent)
        PerformanceMonitor.updateEvent = nil
    end
end

function PerformanceMonitor.update()
    if not PerformanceMonitor.enabled then
        return
    end
    
    -- Obter FPS atual
    local fps = g_app.getFps()
    PerformanceMonitor.stats.fps = fps
    
    -- Adicionar ao histórico
    table.insert(PerformanceMonitor.fpsHistory, fps)
    if #PerformanceMonitor.fpsHistory > PerformanceMonitor.maxHistorySize then
        table.remove(PerformanceMonitor.fpsHistory, 1)
    end
    
    -- Calcular FPS médio
    local sum = 0
    for _, f in ipairs(PerformanceMonitor.fpsHistory) do
        sum = sum + f
    end
    PerformanceMonitor.stats.avgFps = math.floor(sum / #PerformanceMonitor.fpsHistory)
    
    -- Atualizar min/max
    if fps < PerformanceMonitor.stats.minFps then
        PerformanceMonitor.stats.minFps = fps
    end
    if fps > PerformanceMonitor.stats.maxFps then
        PerformanceMonitor.stats.maxFps = fps
    end
    
    -- Obter cache de sprites (se disponível)
    if g_spriteAppearances and g_spriteAppearances.getSpriteCacheSize then
        PerformanceMonitor.stats.spriteCacheSize = g_spriteAppearances.getSpriteCacheSize()
    end
    
    -- Atualizar UI
    PerformanceMonitor.updateUI()
    
    -- Reagendar
    PerformanceMonitor.updateEvent = scheduleEvent(PerformanceMonitor.update, 100)
end

function PerformanceMonitor.updateUI()
    if not PerformanceMonitor.window then
        return
    end
    
    local text = string.format(
        "=== PERFORMANCE MONITOR ===\n\n" ..
        "FPS:\n" ..
        "  Current: %d\n" ..
        "  Average: %d\n" ..
        "  Min: %d\n" ..
        "  Max: %d\n\n" ..
        "SPRITE CACHE:\n" ..
        "  Size: %d sprites\n\n" ..
        "MEMORY:\n" ..
        "  Lua: %.2f MB\n\n" ..
        "Press Ctrl+U to toggle",
        PerformanceMonitor.stats.fps,
        PerformanceMonitor.stats.avgFps,
        PerformanceMonitor.stats.minFps,
        PerformanceMonitor.stats.maxFps,
        PerformanceMonitor.stats.spriteCacheSize,
        collectgarbage("count") / 1024
    )
    
    local label = PerformanceMonitor.window:getChildById('statsLabel')
    if label then
        label:setText(text)
    end
end

function PerformanceMonitor.onFpsChange(fps)
    -- Callback chamado quando FPS muda
end

