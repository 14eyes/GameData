require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7215521Trigger = class("Q7215521Trigger", GadgetActorProxy)
Q7215521Trigger.defaultAlias = "Q7215521Trigger"
local Q72155ClientConfig = require("Quest/Client/Q72155ClientConfig")

local subIDs = Q72155ClientConfig.SubIDs
local npcs = Q72155ClientConfig.Npcs
local datas = Q72155ClientConfig.Datas

function Q7215521Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7215521Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7215521Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72155"):FinishQuestID(false, 7215521)
    self:DestroySelf()
end

function Q7215521Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7215521Trigger
