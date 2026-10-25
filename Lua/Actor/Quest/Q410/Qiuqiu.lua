require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Qiuqiu = class("Qiuqiu", NpcActorProxy)
Qiuqiu.defaultAlias = "Qiuqiu"

function Qiuqiu:Start()
    print("start!Qiuqiu")
end

function Qiuqiu:OnDestroy() end
return Qiuqiu
