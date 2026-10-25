require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000712Trigger = class("Q1000712Trigger", GadgetActorProxy)
Q1000712Trigger.defaultAlias = "Q1000712Trigger"
local Q10007ClientConfig = require("Quest/Client/Q10007ClientConfig")

local this
local subIDs = Q10007ClientConfig.SubIDs
local datas = Q10007ClientConfig.Datas
local npcs = Q10007ClientConfig.Npcs
local points = Q10007ClientConfig.Points

function Q1000712Trigger:OnPostDataPrepare()
    print("Q1000712Trigger - OnPostDataPrepare")
    this = self
end

function Q1000712Trigger:OnPostComponentPrepare()
    print("Q1000712Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(22, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10007)
end

function Q1000712Trigger:TriggerIn()
    print("Q1000712Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000712)
    this:DestroySelf()
end

function Q1000712Trigger:PreTriggerIn()
    print("Q1000712Trigger - PreTriggerIn")
end

function Q1000712Trigger:LightUpTriggerIn()
    print("Q1000712Trigger - LightUpTriggerIn")
end

function Q1000712Trigger:TriggerOut()
    print("Q1000712Trigger - TriggerOut")
end

return Q1000712Trigger
