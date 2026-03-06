-- ============================================================================
-- SCRIPT DE TESTE DAS MELHORIAS OTCLIENTV8
-- ============================================================================
-- Como usar:
--   1. Conectar no jogo
--   2. Abrir Terminal (Ctrl+T)
--   3. Digitar: dofile('modules/client_terminal/test_melhorias.lua')
-- ============================================================================

print("=" .. string.rep("=", 78))
print("  TESTE DAS MELHORIAS OTCLIENTV8")
print("=" .. string.rep("=", 78))
print("")

-- ============================================================================
-- TESTE 1: VERIFICAR FEATURE GameExtendedClientPing
-- ============================================================================
print("[TESTE 1] Verificando suporte ao NewPing System...")
print("")

local hasExtendedPing = g_game.getFeature(GameExtendedClientPing)

if hasExtendedPing then
    print("  [OK] GameExtendedClientPing: HABILITADO")
    print("       Sistema NewPing (250ms) esta ATIVO!")
else
    print("  [!] GameExtendedClientPing: DESABILITADO")
    print("      Usando sistema tradicional (1000ms)")
end
print("")

-- ============================================================================
-- TESTE 2: VERIFICAR PING ATUAL
-- ============================================================================
print("[TESTE 2] Verificando ping atual...")
print("")

local currentPing = g_game.getPing()

if currentPing > 0 then
    local status = "EXCELENTE"
    if currentPing > 100 then status = "BOM" end
    if currentPing > 300 then status = "RUIM" end
    
    print("  >> Ping atual: " .. currentPing .. "ms (" .. status .. ")")
else
    print("  [!] Ping ainda nao medido (aguarde 1-2 segundos)")
end
print("")

-- ============================================================================
-- TESTE 3: VERIFICAR CONEXAO
-- ============================================================================
print("[TESTE 3] Verificando estabilidade da conexao...")
print("")

local isConnOk = g_game.isConnectionOk()

if isConnOk then
    print("  [OK] Conexao: ESTAVEL")
    print("       Dados recebidos nos ultimos 5 segundos")
else
    print("  [X] Conexao: INSTAVEL ou SEM DADOS")
    print("      Nenhum dado recebido nos ultimos 5 segundos")
end
print("")

-- ============================================================================
-- TESTE 4: MONITORAMENTO EM TEMPO REAL
-- ============================================================================
print("[TESTE 4] Ativando monitoramento em tempo real...")
print("")
print("  >> Monitorando ping a cada 5 segundos...")
print("     (Pressione Ctrl+C no terminal para parar)")
print("")

local monitorCount = 0
local lastPing = -1
local pingHistory = {}

local function updateMonitor()
    monitorCount = monitorCount + 1
    local ping = g_game.getPing()
    local connOk = g_game.isConnectionOk()
    
    -- Detectar mudancas
    local mudanca = ""
    if lastPing > 0 and ping > 0 then
        local diff = ping - lastPing
        if math.abs(diff) > 10 then
            if diff > 0 then
                mudanca = " (SUBIU +" .. diff .. "ms)"
            else
                mudanca = " (DESCEU " .. diff .. "ms)"
            end
        end
    end
    
    -- Guardar historico
    table.insert(pingHistory, ping)
    if #pingHistory > 12 then
        table.remove(pingHistory, 1)
    end
    
    -- Calcular media
    local soma = 0
    for _, p in ipairs(pingHistory) do
        soma = soma + p
    end
    local media = math.floor(soma / #pingHistory)
    
    -- Status do ping
    local statusPing = "OTIMO"
    if ping > 100 then statusPing = "BOM" end
    if ping > 300 then statusPing = "RUIM" end
    
    -- Status da conexao
    local statusConn = connOk and "OK" or "INSTAVEL"
    
    -- Exibir
    print(string.format("  [%02d] Ping: %4dms (%s) | Media: %4dms | Conexao: %s%s",
        monitorCount,
        ping, statusPing,
        media,
        statusConn,
        mudanca
    ))
    
    lastPing = ping
end

-- Primeira medição imediata
updateMonitor()

-- Agendar próximas medições
scheduleEvent(function()
    updateMonitor()
    scheduleEvent(function()
        updateMonitor()
        scheduleEvent(function()
            updateMonitor()
            scheduleEvent(function()
                updateMonitor()
                scheduleEvent(function()
                    updateMonitor()
                    print("")
                    print("  [OK] Monitoramento concluido!")
                    print("")
                    
                    -- Analise final
                    print("[ANALISE FINAL]")
                    print("")
                    
                    local pingMin = math.min(unpack(pingHistory))
                    local pingMax = math.max(unpack(pingHistory))
                    local variacao = pingMax - pingMin
                    
                    print("  * Ping minimo: " .. pingMin .. "ms")
                    print("  * Ping maximo: " .. pingMax .. "ms")
                    print("  * Variacao: " .. variacao .. "ms")
                    print("")
                    
                    if variacao < 20 then
                        print("  [OK] EXCELENTE: Conexao muito estavel!")
                    elseif variacao < 50 then
                        print("  [OK] BOM: Conexao estavel")
                    elseif variacao < 100 then
                        print("  [!] RAZOAVEL: Pequenas oscilacoes")
                    else
                        print("  [X] RUIM: Conexao instavel")
                    end
                    
                    print("")
                    print("=" .. string.rep("=", 78))
                    print("  FIM DOS TESTES")
                    print("=" .. string.rep("=", 78))
                    
                end, 5000)
            end, 5000)
        end, 5000)
    end, 5000)
end, 5000)

print("")
print("  >> Aguardando medicoes...")
print("")

