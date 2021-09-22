local m, s
local uci = luci.model.uci.cursor()
local sys = require 'luci.sys'

m = Map("nextcloud", translate("nextcloud"), translate("A safe home for all your data. Access & share your files, calendars, contacts, mail & more from any device, on your terms.")
.. translatef("For further information "
.. "<a href=\"%s\" target=\"_blank\">"
.. "访问官网</a>", "https://nextcloud.com/"))

-- s = m:section(TypedSection, 'MySection', translate('基本设置'))
-- s.anonymous = true
-- o = s:option(DummyValue, '', '')
-- o.rawhtml = true
-- o.version = sys.exec('uci get jd-dailybonus.@global[0].version')
-- o.template = 'nextcloud/service'

m:section(SimpleSection).template  = "nextcloud/nextcloud"

-- s=m:section(TypedSection, "linkease", translate("Global settings"))
-- s.anonymous=true

-- s:option(Flag, "enabled", translate("Enable")).rmempty=false

-- s:option(Value, "port", translate("Port")).rmempty=false
return m