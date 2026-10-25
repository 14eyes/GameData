require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7215505Trigger = class("Q7215505Trigger", GadgetActorProxy)
Q7215505Trigger.defaultAlias = "Q7215505Trigger"
local Q72155ClientConfig = require("Quest/Client/Q72155ClientConfig")

local subIDs = Q72155ClientConfig.SubIDs
local npcs = Q72155ClientConfig.Npcs
local datas = Q72155ClientConfig.Datas

function Q7215505Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7215505Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7215505Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72155"):FinishQuestID(false, 7215505)
    self:DestroySelf()
end

function Q7215505Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7215505Trigger
