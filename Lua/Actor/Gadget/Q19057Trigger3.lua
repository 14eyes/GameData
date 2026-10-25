require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19057Trigger3 = class("Q19057Trigger3", GadgetActorProxy)
Q19057Trigger3.defaultAlias = "Q19057Trigger3"
local Q19057ClientConfig = require("Quest/Client/Q19057ClientConfig")

local subIDs = Q19057ClientConfig.SubIDs
local npcs = Q19057ClientConfig.Npcs
local datas = Q19057ClientConfig.Datas

function Q19057Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19057Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19057Trigger3:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19057")
    actor:RequestCoopInteractionFromSubStartPoint(105901, 1905703)
    actor:RequestInteraction(npcs.Npc1044Data.alias)
    self:DestroySelf()
end

function Q19057Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q19057Trigger3
