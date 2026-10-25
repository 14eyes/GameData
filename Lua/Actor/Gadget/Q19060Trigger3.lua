require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19060Trigger3 = class("Q19060Trigger3", GadgetActorProxy)
Q19060Trigger3.defaultAlias = "Q19060Trigger3"
local Q19060ClientConfig = require("Quest/Client/Q19060ClientConfig")

local subIDs = Q19060ClientConfig.SubIDs
local npcs = Q19060ClientConfig.Npcs
local datas = Q19060ClientConfig.Datas

function Q19060Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19060Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19060Trigger3:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19060")
    actor:RequestCoopInteractionFromSubStartPoint(105901, 1906005)
    actor:RequestInteraction(npcs.Coop_GorouData.alias)
    self:DestroySelf()
end

function Q19060Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q19060Trigger3
