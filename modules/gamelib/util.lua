function postostring(pos)
    return pos.x .. ' ' .. pos.y .. ' ' .. pos.z
end

function dirtostring(dir)
    for k, v in pairs(Directions) do
        if v == dir then
            return k
        end
    end
end

function comma_value(n)
    local left, num, right = string.match(n, '^([^%d]*%d)(%d*)(.-)$')
    return left .. (num:reverse():gsub('(%d%d%d)', '%1,'):reverse()) .. right
end

function formatTimeBySeconds(totalSeconds)
    local hours = math.floor(totalSeconds / 3600)
    local remainingSeconds = totalSeconds % 3600
    local minutes = math.floor(remainingSeconds / 60)
    return string.format("%02d:%02d", hours, minutes)
end

function formatTimeByMinutes(totalMinutes)
    local totalSeconds = totalMinutes * 60
    local hours = math.floor(totalSeconds / 3600)
    local remainingSeconds = totalSeconds % 3600
    local minutes = math.floor(remainingSeconds / 60)
    return string.format("%02d:%02d", hours, minutes)
end

function getVocationSt(id)
  if id == 1 then
    return "K0"
  elseif id == 2 then
    return "P0"
  elseif id == 3 then
    return "S0"
  elseif id == 4 then
    return "D0"
  elseif id == 5 then
    return "MO"
  end
  return "N"
end

function translateVocation(id)
	if id == 1 or id == 11 then
		return 8 -- ek
	elseif id == 2 or id == 12 then
		return 7 -- rp
	elseif id == 3 or id == 13 then
		return 5 -- ms
	elseif id == 4 or id == 14 then
		return 6 -- ed
	elseif id == 5 or id == 15 then
		return 9 -- MK
	end
  return 0
end

function translateWheelVocation(id)
    if id == 1 or id == 11 then
        return 1 -- ek
    elseif id == 2 or id == 12 then
        return 2 -- rp
    elseif id == 3 or id == 13 then
        return 3 -- ms
    elseif id == 4 or id == 14 then
        return 4 -- ed
    elseif id == 5 or id == 15 then
        return 5 -- em
    end
    return 0
end

function translateVocationName(id)
	if id == 1 or id == 11 then
		return "Knight"
	elseif id == 2 or id == 12 then
		return "Paladin"
	elseif id == 3 or id == 13 then
		return "Sorcerer"
	elseif id == 4 or id == 14 then
		return "Druid"
	elseif id == 5 or id == 15 then
		return "Monk"
	end

  return "Rookie"
end

function wrapTextByWords(str, n)
    local result = {}
    local i = 1
    while i <= #str do
        local chunk = str:sub(i, i + n - 1)
        if #chunk < n then
            table.insert(result, chunk)
            break
        end

        -- find last space or punctuation within chunk
        local breakAt = chunk:match("^.*()[%s,%.;:!?%-]")
        if breakAt and breakAt > 1 then
      local chunk = str:sub(i, i + breakAt - 1)
      chunk = chunk:gsub("[%s,%.;:!?%-]+$", "")
      table.insert(result, chunk)
            i = i + breakAt
        else
            -- fallback if no space/punctuation is found
            table.insert(result, chunk)
            i = i + n
        end
    end
    return table.concat(result, "\n")
end

function matchText(input, target)
    input = input:lower()
    target = target:lower()

    if input == target then
        return true
    end

    if #input >= 1 and target:find(input, 1, true) then
        return true
    end
    return false
end

function getFrameClip(id, frameWidth, frameHeight, framesPerRow)
  if id == 0 then
      return {x = 0, y = 0, width = frameWidth, height = frameHeight}
  end
  
  local adjustedId = id
  local row = math.floor(adjustedId / framesPerRow)
  local col = adjustedId % framesPerRow

  return {
    x = col * frameWidth,
    y = row * frameHeight,
    width = frameWidth,
    height = frameHeight
  }
end

function short_text(text, chars_limit)
  if #text > chars_limit then
    local newstring = ''
    for char in (text):gmatch(".") do
      newstring = string.format("%s%s", newstring, char)
      if #newstring >= chars_limit then
        break
      end
    end
    return newstring .. '...'
  end
  return text
end