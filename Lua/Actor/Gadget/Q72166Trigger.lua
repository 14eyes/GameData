require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72166Trigger = class("Q72166Trigger", GadgetActorProxy)
Q72166Trigger.defaultAlias = "Q72166Trigger"
local Q72166ClientConfig = require("Quest/Client/Q72166ClientConfig")

local subIDs = Q72166ClientConfig.SubIDs
local npcs = Q72166ClientConfig.Npcs
local datas = Q72166ClientConfig.Datas

function Q72166Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72166Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72166Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72166"):FinishQuestID(false, 7216635)
    self:DestroySelf()
end

function Q72166Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72166Trigger
