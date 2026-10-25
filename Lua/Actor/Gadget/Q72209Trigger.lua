require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72209Trigger = class("Q72209Trigger", GadgetActorProxy)
Q72209Trigger.defaultAlias = "Q72209Trigger"
local Q72209ClientConfig = require("Quest/Client/Q72209ClientConfig")

local subIDs = Q72209ClientConfig.SubIDs
local npcs = Q72209ClientConfig.Npcs
local datas = Q72209ClientConfig.Datas

function Q72209Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72209Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72209Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72209"):FinishQuestID(false, 7220902)
    self:DestroySelf()
end

function Q72209Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72209Trigger
