require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1101913Trigger = class("Q1101913Trigger", GadgetActorProxy)
Q1101913Trigger.defaultAlias = "Q1101913Trigger"
local Q11019ClientConfig = require("Quest/Client/Q11019ClientConfig")

local this
local subIDs = Q11019ClientConfig.SubIDs
local npcs = Q11019ClientConfig.Npcs
local gadgets = Q11019ClientConfig.Gadgets
local datas = Q11019ClientConfig.Datas

function Q1101913Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1101913Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1101913Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11019"):NarratorOnlyTaskByData(datas.NarratorWithId1101906, nil, 11019)
    actorUtils.FinishQuestID(false, 1101913)
    this:DestroySelf()
end

function Q1101913Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1101913Trigger
