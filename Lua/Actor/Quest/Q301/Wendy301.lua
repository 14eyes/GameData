require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Wendy301 = class("Wendy301", NpcActorProxy)
Wendy301.defaultAlias = "Wendy301"
function Wendy301:PreGetAlias() end
function Wendy301:Start() end
function Wendy301:OnDestroy() end
return Wendy301
