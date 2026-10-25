require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1019Trigger4 = class("Q1019Trigger4", GadgetActorProxy)
Q1019Trigger4.defaultAlias = "Q1019Trigger4"
local Q1019ClientConfig = require("Quest/Client/Q1019ClientConfig")

local subIDs = Q1019ClientConfig.SubIDs
local npcs = Q1019ClientConfig.Npcs
local datas = Q1019ClientConfig.Datas

function Q1019Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1019Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1019Trigger4:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("1019"):RequestInteraction(npcs.Npc1030Data.alias)
    self:DestroySelf()
end

function Q1019Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q1019Trigger4
