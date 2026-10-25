require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7215520Trigger = class("Q7215520Trigger", GadgetActorProxy)
Q7215520Trigger.defaultAlias = "Q7215520Trigger"
local Q72155ClientConfig = require("Quest/Client/Q72155ClientConfig")

local subIDs = Q72155ClientConfig.SubIDs
local npcs = Q72155ClientConfig.Npcs
local datas = Q72155ClientConfig.Datas

function Q7215520Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7215520Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7215520Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72155"):FinishQuestID(false, 7215520)
    self:DestroySelf()
end

function Q7215520Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7215520Trigger
