require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19057Trigger2 = class("Q19057Trigger2", GadgetActorProxy)
Q19057Trigger2.defaultAlias = "Q19057Trigger2"
local Q19057ClientConfig = require("Quest/Client/Q19057ClientConfig")

local subIDs = Q19057ClientConfig.SubIDs
local npcs = Q19057ClientConfig.Npcs
local datas = Q19057ClientConfig.Datas

function Q19057Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19057Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19057Trigger2:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19057")
    actor:RequestCoopInteractionFromSubStartPoint(105901, 1905704)
    actor:RequestInteraction(npcs.Coop_GorouData.alias)
    self:DestroySelf()
end

function Q19057Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q19057Trigger2
