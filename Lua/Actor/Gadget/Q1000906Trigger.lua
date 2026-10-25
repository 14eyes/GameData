require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000906Trigger = class("Q1000906Trigger", GadgetActorProxy)
Q1000906Trigger.defaultAlias = "Q1000906Trigger"
local Q10009ClientConfig = require("Quest/Client/Q10009ClientConfig")

local this
local subIDs = Q10009ClientConfig.SubIDs
local datas = Q10009ClientConfig.Datas
local npcs = Q10009ClientConfig.Npcs
local points = Q10009ClientConfig.Points

function Q1000906Trigger:OnPostDataPrepare()
    print("Q1000906Trigger - OnPostDataPrepare")
    this = self
end

function Q1000906Trigger:OnPostComponentPrepare()
    print("Q1000906Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10009)
end

function Q1000906Trigger:TriggerIn()
    print("Q1000906Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000906)
    this:DestroySelf()
end

function Q1000906Trigger:PreTriggerIn()
    print("Q1000906Trigger - PreTriggerIn")
end

function Q1000906Trigger:LightUpTriggerIn()
    print("Q1000906Trigger - LightUpTriggerIn")
end

function Q1000906Trigger:TriggerOut()
    print("Q1000906Trigger - TriggerOut")
end

return Q1000906Trigger
