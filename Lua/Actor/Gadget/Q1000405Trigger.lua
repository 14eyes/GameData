require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000405Trigger = class("Q1000405Trigger", GadgetActorProxy)
Q1000405Trigger.defaultAlias = "Q1000405Trigger"
local Q10004ClientConfig = require("Quest/Client/Q10004ClientConfig")

local this
local subIDs = Q10004ClientConfig.SubIDs
local datas = Q10004ClientConfig.Datas
local npcs = Q10004ClientConfig.Npcs

function Q1000405Trigger:OnPostDataPrepare()
    print("Q1000405Trigger - OnPostDataPrepare")
    this = self
end

function Q1000405Trigger:OnPostComponentPrepare()
    print("Q1000405Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10004)
end

function Q1000405Trigger:TriggerIn()
    print("Q1000405Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000405)
    this:DestroySelf()
end

function Q1000405Trigger:PreTriggerIn()
    print("Q1000405Trigger - PreTriggerIn")
end

function Q1000405Trigger:LightUpTriggerIn()
    print("Q1000405Trigger - LightUpTriggerIn")
end

function Q1000405Trigger:TriggerOut()
    print("Q1000405Trigger - TriggerOut")
end

return Q1000405Trigger
