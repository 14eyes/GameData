require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000711Trigger = class("Q1000711Trigger", GadgetActorProxy)
Q1000711Trigger.defaultAlias = "Q1000711Trigger"
local Q10007ClientConfig = require("Quest/Client/Q10007ClientConfig")

local this
local subIDs = Q10007ClientConfig.SubIDs
local datas = Q10007ClientConfig.Datas
local npcs = Q10007ClientConfig.Npcs
local points = Q10007ClientConfig.Points

function Q1000711Trigger:OnPostDataPrepare()
    print("Q1000711Trigger - OnPostDataPrepare")
    this = self
end

function Q1000711Trigger:OnPostComponentPrepare()
    print("Q1000711Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10007)
end

function Q1000711Trigger:TriggerIn()
    print("Q1000711Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000711)
    this:DestroySelf()
end

function Q1000711Trigger:PreTriggerIn()
    print("Q1000711Trigger - PreTriggerIn")
end

function Q1000711Trigger:LightUpTriggerIn()
    print("Q1000711Trigger - LightUpTriggerIn")
end

function Q1000711Trigger:TriggerOut()
    print("Q1000711Trigger - TriggerOut")
end

return Q1000711Trigger
