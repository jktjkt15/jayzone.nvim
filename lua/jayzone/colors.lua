local M = {}

local colors = {
	["jayzone"] = {
		none = "none",
		orange = "#ffb65b",
		-- orange = "#ffb65b",
		yellow = "#f3f383",
		green = "#62ea76",
		red = "#ea708e",
		-- white = "#ffffff",
		white = "#F2F3F3",
		very_bright_grey = "#c8ccd4",
		bright_grey = "#bebebe",
		grey = "#565c64",
		dark_grey = "#353b45",
		blue = "#5a84e5",
		cyan = "#61afef",
		purple = "#c2a4ff",
		dark_purple = "#8c62e0",
		background = "#1f2228",
		-- background = "#282C34",

		diff_add = "#009416",
		diff_delete = "#ea708e",
		diff_change = "#61afef",
		diff_text = "#c2a4ff",

		-- diff_add = "#009416",
		-- diff_delete = "#de214f",
		-- diff_change = "#1d4bb7",
		-- diff_text = "#8143ff",
	},
	["jayzone2"] = {
		none = "none",
		orange = "#f4a261",
		yellow = "#ffe14e",
		green = "#17c3b2",
		red = "#ff7587",
		-- white = "#ffffff",
		white = "#fef9ef",
		very_bright_grey = "#c8ccd4",
		bright_grey = "#bebebe",
		grey = "#565c64",
		dark_grey = "#353b45",
		blue = "#3a86ff",
		cyan = "#457b9d",
		purple = "#6e44ff",
		dark_purple = "#8c62e0",
		background = "#355070",
		-- background = "#282C34",

		diff_add = "#17c3b2",
		diff_delete = "#3a86ff",
		diff_change = "#61afef",
		diff_text = "#6e44ff",

		-- diff_add = "#009416",
		-- diff_delete = "#de214f",
		-- diff_change = "#1d4bb7",
		-- diff_text = "#8143ff",
	},
}

function M.getColorScheme(name)
	name = name or "jayzone"
	return colors[name] or colors["jayzone"]
end

return M

-- #f4a261
-- #ffbe0b, #fb5607, #ff006e, #8338ec, #3a86ff
--
-- #227c9d, #17c3b2, #ffcb77, #fef9ef, #fe6d73
--
-- #355070, #6d597a, #b56576, #e56b6f, #eaac8b
--
-- #e63946, #f1faee, #a8dadc, #457b9d, #1d3557
--
-- #6e44ff, #b892ff, #ffc2e2, #ff90b3, #ef7a85
-- - Tailwind
-- - Tailwind
--
-- { 'lemon_chiffon': { DEFAULT: '#fff7d1', 100: '#5d4d00', 200: '#ba9b00', 300: '#ffd817', 400: '#ffe874', 500: '#fff7d1', 600: '#fff9da', 700: '#fffae3', 800: '#fffced', 900: '#fffdf6' }, 'ivory': { DEFAULT: '#fffceb', 100: '#625300', 200: '#c4a600', 300: '#ffdf27', 400: '#ffed89', 500: '#fffceb', 600: '#fffdef', 700: '#fffdf3', 800: '#fffef7', 900: '#fffefb' }, 'vanilla': { DEFAULT: '#fff3b7', 100: '#584900', 200: '#af9200', 300: '#ffd608', 400: '#ffe460', 500: '#fff3b7', 600: '#fff5c6', 700: '#fff8d4', 800: '#fffae2', 900: '#fffdf1' }, 'flax': { DEFAULT: '#ffee9d', 100: '#534500', 200: '#a58a00', 300: '#f8cf00', 400: '#ffe14b', 500: '#ffee9d', 600: '#fff2b1', 700: '#fff5c5', 800: '#fff9d8', 900: '#fffcec' }, 'jasmine': { DEFAULT: '#ffea83', 100: '#4e4100', 200: '#9b8100', 300: '#e9c200', 400: '#ffde37', 500: '#ffea83', 600: '#ffef9d', 700: '#fff3b6', 800: '#fff7ce', 900: '#fffbe7' }, 'naples_yellow': { DEFAULT: '#ffe568', 100: '#473c00', 200: '#8f7700', 300: '#d6b300', 400: '#ffda1f', 500: '#ffe568', 600: '#ffeb85', 700: '#fff0a3', 800: '#fff5c2', 900: '#fffae0' }, 'mustard': { DEFAULT: '#ffe14e', 100: '#423700', 200: '#856f00', 300: '#c7a600', 400: '#ffd60a', 500: '#ffe14e', 600: '#ffe770', 700: '#ffed94', 800: '#fff3b8', 900: '#fff9db' }, 'school_bus_yellow': { DEFAULT: '#ffdc34', 100: '#3d3300', 200: '#7a6600', 300: '#b89900', 400: '#f5cc00', 500: '#ffdc34', 600: '#ffe45c', 700: '#ffeb85', 800: '#fff1ad', 900: '#fff8d6' }, 'school_bus_yellow': { DEFAULT: '#ffd81a', 100: '#382f00', 200: '#705e00', 300: '#a88c00', 400: '#e0bb00', 500: '#ffd81a', 600: '#ffe047', 700: '#ffe875', 800: '#fff0a3', 900: '#fff7d1' }, 'gold': { DEFAULT: '#ffd300', 100: '#332b00', 200: '#665500', 300: '#998000', 400: '#ccaa00', 500: '#ffd300', 600: '#ffdd33', 700: '#ffe666', 800: '#ffee99', 900: '#fff6cc' } }
--
-- - CSV
--
-- fff7d1,fffceb,fff3b7,ffee9d,ffea83,ffe568,ffe14e,ffdc34,ffd81a,ffd300
--
-- - With #
--
-- #fff7d1, #fffceb, #fff3b7, #ffee9d, #ffea83, #ffe568, #ffe14e, #ffdc34, #ffd81a, #ffd300
--
-- - Array
--
-- ["fff7d1","fffceb","fff3b7","ffee9d","ffea83","ffe568","ffe14e","ffdc34","ffd81a","ffd300"]
--
-- - Object
--
-- {"Lemon chiffon":"fff7d1","Ivory":"fffceb","Vanilla":"fff3b7","Flax":"ffee9d","Jasmine":"ffea83","Naples yellow":"ffe568","Mustard":"ffe14e","School bus yellow":"ffdc34","School bus yellow 2":"ffd81a","Gold":"ffd300"}
--
-- - Extended Array
--
-- [{"name":"Lemon chiffon","hex":"fff7d1","rgb":[255,247,209],"cmyk":[0,3,18,0],"hsb":[50,18,100],"hsl":[50,100,91],"lab":[97,-3,19]},{"name":"Ivory","hex":"fffceb","rgb":[255,252,235],"cmyk":[0,1,8,0],"hsb":[51,8,100],"hsl":[51,100,96],"lab":[99,-2,8]},{"name":"Vanilla","hex":"fff3b7","rgb":[255,243,183],"cmyk":[0,5,28,0],"hsb":[50,28,100],"hsl":[50,100,86],"lab":[95,-5,30]},{"name":"Flax","hex":"ffee9d","rgb":[255,238,157],"cmyk":[0,7,38,0],"hsb":[50,38,100],"hsl":[50,100,81],"lab":[94,-5,41]},{"name":"Jasmine","hex":"ffea83","rgb":[255,234,131],"cmyk":[0,8,49,0],"hsb":[50,49,100],"hsl":[50,100,76],"lab":[92,-6,52]},{"name":"Naples yellow","hex":"ffe568","rgb":[255,229,104],"cmyk":[0,10,59,0],"hsb":[50,59,100],"hsl":[50,100,70],"lab":[91,-6,63]},{"name":"Mustard","hex":"ffe14e","rgb":[255,225,78],"cmyk":[0,12,69,0],"hsb":[50,69,100],"hsl":[50,100,65],"lab":[90,-5,72]},{"name":"School bus yellow","hex":"ffdc34","rgb":[255,220,52],"cmyk":[0,14,80,0],"hsb":[50,80,100],"hsl":[50,100,60],"lab":[88,-4,80]},{"name":"School bus yellow","hex":"ffd81a","rgb":[255,216,26],"cmyk":[0,15,90,0],"hsb":[50,90,100],"hsl":[50,100,55],"lab":[87,-2,85]},{"name":"Gold","hex":"ffd300","rgb":[255,211,0],"cmyk":[0,17,100,0],"hsb":[50,100,100],"hsl":[50,100,50],"lab":[86,0,86]}]
--
-- - XML
--
-- <palette>
--   <color name="Lemon chiffon" hex="fff7d1" r="255" g="247" b="209" />
--   <color name="Ivory" hex="fffceb" r="255" g="252" b="235" />
--   <color name="Vanilla" hex="fff3b7" r="255" g="243" b="183" />
--   <color name="Flax" hex="ffee9d" r="255" g="238" b="157" />
--   <color name="Jasmine" hex="ffea83" r="255" g="234" b="131" />
--   <color name="Naples yellow" hex="ffe568" r="255" g="229" b="104" />
--   <color name="Mustard" hex="ffe14e" r="255" g="225" b="78" />
--   <color name="School bus yellow" hex="ffdc34" r="255" g="220" b="52" />
--   <color name="School bus yellow" hex="ffd81a" r="255" g="216" b="26" />
--   <color name="Gold" hex="ffd300" r="255" g="211" b="0" />
-- </palette>
