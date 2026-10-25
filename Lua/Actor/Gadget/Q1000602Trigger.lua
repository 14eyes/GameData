require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000602Trigger = class("Q1000602Trigger", GadgetActorProxy)
Q1000602Trigger.defaultAlias = "Q1000602Trigger"
local Q10006ClientConfig = require("Quest/Client/Q10006ClientConfig")

local this
local subIDs = Q10006ClientConfig.SubIDs
local datas = Q10006ClientConfig.Datas
local npcs = Q10006ClientConfig.Npcs

function Q1000602Trigger:OnPostDataPrepare()
    print("Q1000602Trigger - OnPostDataPrepare")
    this = self
end

function Q1000602Trigger:OnPostComponentPrepare()
    print("Q1000602Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10006)
end

function Q1000602Trigger:TriggerIn()
    print("Q1000602Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000602)
    this:DestroySelf()
end

function Q1000602Trigger:PreTriggerIn()
    print("Q1000602Trigger - PreTriggerIn")
end

function Q1000602Trigger:LightUpTriggerIn()
    print("Q1000602Trigger - LightUpTriggerIn")
end

function Q1000602Trigger:TriggerOut()
    print("Q1000602Trigger - TriggerOut")
end

return Q1000602Trigger
