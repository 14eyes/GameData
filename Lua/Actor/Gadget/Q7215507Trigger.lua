require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7215507Trigger = class("Q7215507Trigger", GadgetActorProxy)
Q7215507Trigger.defaultAlias = "Q7215507Trigger"
local Q72155ClientConfig = require("Quest/Client/Q72155ClientConfig")

local subIDs = Q72155ClientConfig.SubIDs
local npcs = Q72155ClientConfig.Npcs
local datas = Q72155ClientConfig.Datas

function Q7215507Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7215507Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7215507Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72155"):FinishQuestID(false, 7215507)
    self:DestroySelf()
end

function Q7215507Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7215507Trigger
