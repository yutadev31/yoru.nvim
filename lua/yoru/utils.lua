local M = {}

function M.hex_to_rgb(hex)
  hex = hex:gsub("#", "")
  if #hex == 3 then
    hex = hex:sub(1, 1) .. hex:sub(1, 1) .. hex:sub(2, 2) .. hex:sub(2, 2) .. hex:sub(3, 3) .. hex:sub(3, 3)
  end
  return tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16)
end

function M.rgb_to_hex(r, g, b)
  return string.format(
    "#%02x%02x%02x",
    math.max(0, math.min(255, r)),
    math.max(0, math.min(255, g)),
    math.max(0, math.min(255, b))
  )
end

function M.mix_hex(c1, c2, t)
  t = math.max(0, math.min(1, t))
  local r1, g1, b1 = M.hex_to_rgb(c1)
  local r2, g2, b2 = M.hex_to_rgb(c2)
  local r = math.floor(r1 * (1 - t) + r2 * t + 0.5)
  local g = math.floor(g1 * (1 - t) + g2 * t + 0.5)
  local b = math.floor(b1 * (1 - t) + b2 * t + 0.5)
  return M.rgb_to_hex(r, g, b)
end

return M
