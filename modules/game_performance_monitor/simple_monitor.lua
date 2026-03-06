-- Performance Monitor - Versão Simples
-- Pressione Ctrl+U para abrir

performanceWindow = nil
performanceEnabled = false
performanceEvent = nil
stressTestEnabled = false
stressTestEvent = nil

-- NOTA: Sistema de limpeza automatica agora esta implementado em C++
-- Ver: src/client/spriteappearances.cpp -> autoCleanup()
-- Chamado automaticamente toda frame com LRU inteligente

function initPerformanceMonitor()
  -- Criar janela no rootWidget
  local rootWidget = g_ui.getRootWidget()
  performanceWindow = g_ui.createWidget('UIWindow', rootWidget)
  performanceWindow:setId('performanceMonitor')
  performanceWindow:setText('Performance Monitor')
  performanceWindow:setSize({width = 300, height = 250})
  
  -- Centralizar manualmente (sem anchors)
  local screenWidth = rootWidget:getWidth()
  local screenHeight = rootWidget:getHeight()
  local x = (screenWidth - 300) / 2
  local y = (screenHeight - 250) / 2
  performanceWindow:setPosition({x = x, y = y})
  
  -- Criar label para stats
  local label = g_ui.createWidget('UILabel', performanceWindow)
  label:setId('statsLabel')
  label:setTextAlign(AlignLeft)
  label:setPosition({x = 10, y = 30})
  label:setSize({width = 280, height = 210})
  label:setColor('#00FF00')
  
  performanceWindow:hide()
  
  print('[Performance] Monitor criado! Pressione Ctrl+U para abrir.')
end

function togglePerformanceMonitor()
  if not performanceWindow then
    initPerformanceMonitor()
  end
  
  if performanceWindow:isVisible() then
    performanceWindow:hide()
    if performanceEvent then
      removeEvent(performanceEvent)
      performanceEvent = nil
    end
    performanceEnabled = false
  else
    performanceWindow:show()
    performanceWindow:raise()
    performanceWindow:focus()
    performanceEnabled = true
    updatePerformanceStats()
  end
end

function updatePerformanceStats()
  if not performanceEnabled or not performanceWindow then
    return
  end
  
  -- Coleta de lixo LEVE (incremental, nao bloqueia)
  collectgarbage("step", 10)
  
  local fps = g_app.getFps() or 0
  local cacheSize = 0
  
  if g_spriteAppearances and g_spriteAppearances.getSpriteCacheSize then
    cacheSize = g_spriteAppearances.getSpriteCacheSize()
  end
  
  local memoryMB = collectgarbage("count") / 1024
  
  local stressStatus = stressTestEnabled and "ATIVO (causando lag)" or "DESATIVADO"
  local fpsLimit = g_app.getMaxFps()
  
  local text = string.format(
    "=== PERFORMANCE MONITOR ===\n\n" ..
    "FPS: %d (Limite: %d)\n\n" ..
    "SPRITE CACHE:\n" ..
    "  Size: %d sprites\n\n" ..
    "MEMORY:\n" ..
    "  Lua: %.2f MB\n\n" ..
    "STRESS TEST: %s\n" ..
    "  Ctrl+I para ligar/desligar\n\n" ..
    "LIMITAR FPS:\n" ..
    "  Ctrl+1 = 30 FPS\n" ..
    "  Ctrl+2 = 60 FPS\n" ..
    "  Ctrl+3 = Ilimitado\n\n" ..
    "Auto-cleanup: C++ (nativo)\n\n" ..
    "Press Ctrl+U to close",
    fps,
    fpsLimit,
    cacheSize,
    memoryMB,
    stressStatus
  )
  
  local label = performanceWindow:getChildById('statsLabel')
  if label then
    label:setText(text)
  end
  
  performanceEvent = scheduleEvent(updatePerformanceStats, 500)
end

-- Stress Test: DESABILITADO - Causava vazamento de memoria extremo
-- O stress test criava 500x500 tabelas (250.000 objetos) a cada 1ms
-- Isso acumulava ~500MB de lixo por minuto!
function doStressTest()
  if not stressTestEnabled then
    return
  end
  
  -- Stress test MUITO mais leve
  collectgarbage("step", 10)
  
  -- Apenas operacoes matematicas (sem criar objetos)
  local result = 0
  for i = 1, 1000 do
    result = result + math.sin(i) * math.cos(i)
  end
  
  -- Repetir a cada 100ms (antes era 1ms!)
  stressTestEvent = scheduleEvent(doStressTest, 100)
end

function toggleStressTest()
  stressTestEnabled = not stressTestEnabled
  
  g_logger.info('[Performance] toggleStressTest chamado! Estado: ' .. tostring(stressTestEnabled))
  
  if stressTestEnabled then
    g_logger.warning('[Performance] STRESS TEST ATIVADO - Simulando PC fraco!')
    print('[Performance] STRESS TEST ATIVADO - Simulando PC fraco!')
    doStressTest()
  else
    g_logger.info('[Performance] STRESS TEST DESATIVADO')
    print('[Performance] STRESS TEST DESATIVADO')
    if stressTestEvent then
      removeEvent(stressTestEvent)
      stressTestEvent = nil
    end
  end
end

-- Registrar atalhos
g_keyboard.bindKeyPress('Ctrl+U', togglePerformanceMonitor)
g_keyboard.bindKeyPress('Ctrl+I', function()
  g_logger.info('[Performance] Tecla Ctrl+I pressionada!')
  toggleStressTest()
end)
g_keyboard.bindKeyPress('Ctrl+1', function()
  g_app.setMaxFps(30)
  g_logger.info('[Performance] FPS limitado a 30')
end)
g_keyboard.bindKeyPress('Ctrl+2', function()
  g_app.setMaxFps(60)
  g_logger.info('[Performance] FPS limitado a 60')
end)
g_keyboard.bindKeyPress('Ctrl+3', function()
  g_app.setMaxFps(0)
  g_logger.info('[Performance] FPS ilimitado')
end)

print('[Performance] Modulo carregado! Pressione Ctrl+U (Monitor) ou Ctrl+I (Stress Test)')

