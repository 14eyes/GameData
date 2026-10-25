require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3012StageFinTrigger = class("Q3012StageFinTrigger", GadgetActorProxy)
Q3012StageFinTrigger.defaultAlias = "Q3012StageFinTrigger"
local Q3012ClientConfig = require("Quest/Client/Q3012ClientConfig")

local subIDs = Q3012ClientConfig.SubIDs
local npcs = Q3012ClientConfig.Npcs
local datas = Q3012ClientConfig.Datas

function Q3012StageFinTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3012StageFinTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(16, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3012StageFinTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3012"):RequestInteraction(npcs.Npc1054Data.alias)
    self:DestroySelf()
end

function Q3012StageFinTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3012StageFinTrigger
