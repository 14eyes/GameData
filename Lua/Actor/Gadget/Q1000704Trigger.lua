require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000704Trigger = class("Q1000704Trigger", GadgetActorProxy)
Q1000704Trigger.defaultAlias = "Q1000704Trigger"
local Q10007ClientConfig = require("Quest/Client/Q10007ClientConfig")

local this
local subIDs = Q10007ClientConfig.SubIDs
local datas = Q10007ClientConfig.Datas
local npcs = Q10007ClientConfig.Npcs
local points = Q10007ClientConfig.Points

function Q1000704Trigger:OnPostDataPrepare()
    print("Q1000704Trigger - OnPostDataPrepare")
    this = self
end

function Q1000704Trigger:OnPostComponentPrepare()
    print("Q1000704Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10007)
end

function Q1000704Trigger:TriggerIn()
    print("Q1000704Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000704)
    this:DestroySelf()
end

function Q1000704Trigger:PreTriggerIn()
    print("Q1000704Trigger - PreTriggerIn")
end

function Q1000704Trigger:LightUpTriggerIn()
    print("Q1000704Trigger - LightUpTriggerIn")
end

function Q1000704Trigger:TriggerOut()
    print("Q1000704Trigger - TriggerOut")
end

return Q1000704Trigger
