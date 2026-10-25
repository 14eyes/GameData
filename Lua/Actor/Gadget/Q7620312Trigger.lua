require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620312Trigger = class("Q7620312Trigger", GadgetActorProxy)
Q7620312Trigger.defaultAlias = "Q7620312Trigger"
local Q76203ClientConfig = require("Quest/Client/Q76203ClientConfig")

local this
local subIDs = Q76203ClientConfig.SubIDs
local datas = Q76203ClientConfig.Datas
local npcs = Q76203ClientConfig.Npcs
local points = Q76203ClientConfig.Points

function Q7620312Trigger:OnPostDataPrepare()
    print("Q7620312Trigger - OnPostDataPrepare")
    this = self
end

function Q7620312Trigger:OnPostComponentPrepare()
    print("Q7620312Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76203)
end

function Q7620312Trigger:TriggerIn()
    print("Q7620312Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7620312})
    this:DestroySelf()
end

function Q7620312Trigger:PreTriggerIn()
    print("Q7620312Trigger - PreTriggerIn")
end

function Q7620312Trigger:LightUpTriggerIn()
    print("Q7620312Trigger - LightUpTriggerIn")
end

function Q7620312Trigger:TriggerOut()
    print("Q7620312Trigger - TriggerOut")
end

return Q7620312Trigger
