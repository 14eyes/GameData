require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302601Trigger = class("Q1302601Trigger", GadgetActorProxy)
Q1302601Trigger.defaultAlias = "Q1302601Trigger"
local Q13026ClientConfig = require("Quest/Client/Q13026ClientConfig")

local this
local subIDs = Q13026ClientConfig.SubIDs
local npcs = Q13026ClientConfig.Npcs
local gadgets = Q13026ClientConfig.Gadgets
local datas = Q13026ClientConfig.Datas

function Q1302601Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302601Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25.65396, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1302601Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1302601)
    this:DestroySelf()
end

function Q1302601Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1302601Trigger
