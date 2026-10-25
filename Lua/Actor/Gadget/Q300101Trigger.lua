require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300101Trigger = class("Q300101Trigger", GadgetActorProxy)
Q300101Trigger.defaultAlias = "Q300101Trigger"
local Q3001ClientConfig = require("Quest/Client/Q3001ClientConfig")

local subIDs = Q3001ClientConfig.SubIDs
local npcs = Q3001ClientConfig.Npcs
local datas = Q3001ClientConfig.Datas

function Q300101Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300101Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300101Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3001"):RequestInteraction(npcs.Npc1051Data.alias)
    self:DestroySelf()
end

function Q300101Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300101Trigger
