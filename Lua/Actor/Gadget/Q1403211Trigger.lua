require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403211Trigger = class("Q1403211Trigger", GadgetActorProxy)
Q1403211Trigger.defaultAlias = "Q1403211Trigger"
local Q14032ClientConfig = require("Quest/Client/Q14032ClientConfig")

local this
local subIDs = Q14032ClientConfig.SubIDs
local datas = Q14032ClientConfig.Datas
local npcs = Q14032ClientConfig.Npcs
local points = Q14032ClientConfig.Points

function Q1403211Trigger:OnPostDataPrepare()
    print("Q1403211Trigger - OnPostDataPrepare")
    this = self
end

function Q1403211Trigger:OnPostComponentPrepare()
    print("Q1403211Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14032)
end

function Q1403211Trigger:TriggerIn()
    print("Q1403211Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1403211)
    this:DestroySelf()
end

function Q1403211Trigger:PreTriggerIn()
    print("Q1403211Trigger - PreTriggerIn")
end

function Q1403211Trigger:LightUpTriggerIn()
    print("Q1403211Trigger - LightUpTriggerIn")
end

function Q1403211Trigger:TriggerOut()
    print("Q1403211Trigger - TriggerOut")
end

return Q1403211Trigger
