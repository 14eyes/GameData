require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403231Trigger = class("Q1403231Trigger", GadgetActorProxy)
Q1403231Trigger.defaultAlias = "Q1403231Trigger"
local Q14032ClientConfig = require("Quest/Client/Q14032ClientConfig")

local this
local subIDs = Q14032ClientConfig.SubIDs
local datas = Q14032ClientConfig.Datas
local npcs = Q14032ClientConfig.Npcs
local points = Q14032ClientConfig.Points

function Q1403231Trigger:OnPostDataPrepare()
    print("Q1403231Trigger - OnPostDataPrepare")
    this = self
end

function Q1403231Trigger:OnPostComponentPrepare()
    print("Q1403231Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14032)
end

function Q1403231Trigger:TriggerIn()
    print("Q1403231Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1403231)
    this:DestroySelf()
end

function Q1403231Trigger:PreTriggerIn()
    print("Q1403231Trigger - PreTriggerIn")
end

function Q1403231Trigger:LightUpTriggerIn()
    print("Q1403231Trigger - LightUpTriggerIn")
end

function Q1403231Trigger:TriggerOut()
    print("Q1403231Trigger - TriggerOut")
end

return Q1403231Trigger
