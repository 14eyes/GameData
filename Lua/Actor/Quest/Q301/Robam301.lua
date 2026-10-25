require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Robam301 = class("Robam301", NpcActorProxy)
Robam301.defaultAlias = "Robam301"
function Robam301:PreGetAlias() end
function Robam301:Start() end
function Robam301:ShowStart() end
function Robam301:StartDay() end
function Robam301:StartNight() end
function Robam301:StartDaily() end
function Robam301:OnDestroy() end
return Robam301
