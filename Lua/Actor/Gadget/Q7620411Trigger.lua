require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620411Trigger = class("Q7620411Trigger", GadgetActorProxy)
Q7620411Trigger.defaultAlias = "Q7620411Trigger"
local Q76204ClientConfig = require("Quest/Client/Q76204ClientConfig")

local this
local subIDs = Q76204ClientConfig.SubIDs
local datas = Q76204ClientConfig.Datas
local npcs = Q76204ClientConfig.Npcs
local points = Q76204ClientConfig.Points

function Q7620411Trigger:OnPostDataPrepare()
    print("Q7620411Trigger - OnPostDataPrepare")
    this = self
end

function Q7620411Trigger:OnPostComponentPrepare()
    print("Q7620411Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76204)
end

function Q7620411Trigger:TriggerIn()
    print("Q7620411Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7620411})
    this:DestroySelf()
end

function Q7620411Trigger:PreTriggerIn()
    print("Q7620411Trigger - PreTriggerIn")
end

function Q7620411Trigger:LightUpTriggerIn()
    print("Q7620411Trigger - LightUpTriggerIn")
end

function Q7620411Trigger:TriggerOut()
    print("Q7620411Trigger - TriggerOut")
end

return Q7620411Trigger
