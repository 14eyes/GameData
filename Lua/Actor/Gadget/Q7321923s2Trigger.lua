require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321923s2Trigger = class("Q7321923s2Trigger", GadgetActorProxy)
Q7321923s2Trigger.defaultAlias = "Q7321923s2Trigger"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local this
local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321923s2Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321923s2Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7321923s2Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73219"):NarratorOnlyTaskByData(datas.Narrator_7321917)
    this:DestroySelf()
end

function Q7321923s2Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7321923s2Trigger
