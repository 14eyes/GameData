require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19036Trigger1 = class("Q19036Trigger1", GadgetActorProxy)
Q19036Trigger1.defaultAlias = "Q19036Trigger1"
local Q19036ClientConfig = require("Quest/Client/Q19036ClientConfig")

local subIDs = Q19036ClientConfig.SubIDs
local npcs = Q19036ClientConfig.Npcs
local datas = Q19036ClientConfig.Datas

function Q19036Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19036Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19036Trigger1:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19036")
    actor:RequestCoopInteractionFromSubStartPoint(105901, 1903606)
    actor:RequestInteraction(npcs.Coop_GorouData.alias)
    self:DestroySelf()
end

function Q19036Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19036Trigger1
