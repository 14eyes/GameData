require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000710Trigger = class("Q1000710Trigger", GadgetActorProxy)
Q1000710Trigger.defaultAlias = "Q1000710Trigger"
local Q10007ClientConfig = require("Quest/Client/Q10007ClientConfig")

local this
local subIDs = Q10007ClientConfig.SubIDs
local datas = Q10007ClientConfig.Datas
local npcs = Q10007ClientConfig.Npcs
local points = Q10007ClientConfig.Points

function Q1000710Trigger:OnPostDataPrepare()
    print("Q1000710Trigger - OnPostDataPrepare")
    this = self
end

function Q1000710Trigger:OnPostComponentPrepare()
    print("Q1000710Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(120, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10007)
end

function Q1000710Trigger:TriggerIn()
    print("Q1000710Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000710)
    this:DestroySelf()
end

function Q1000710Trigger:PreTriggerIn()
    print("Q1000710Trigger - PreTriggerIn")
end

function Q1000710Trigger:LightUpTriggerIn()
    print("Q1000710Trigger - LightUpTriggerIn")
end

function Q1000710Trigger:TriggerOut()
    print("Q1000710Trigger - TriggerOut")
end

return Q1000710Trigger
