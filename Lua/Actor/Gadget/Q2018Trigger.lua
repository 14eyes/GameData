require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2018Trigger = class("Q2018Trigger", GadgetActorProxy)
Q2018Trigger.defaultAlias = "Q2018Trigger"
local Q2018ClientConfig = require("Quest/Client/Q2018ClientConfig")

local subIDs = Q2018ClientConfig.SubIDs
local npcs = Q2018ClientConfig.Npcs
local datas = Q2018ClientConfig.Datas

function Q2018Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2018Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2018Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2018"):FinishQuestID(false, 201803)
    self:DestroySelf()
end

function Q2018Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2018Trigger
