require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620401Trigger = class("Q7620401Trigger", GadgetActorProxy)
Q7620401Trigger.defaultAlias = "Q7620401Trigger"
local Q76204ClientConfig = require("Quest/Client/Q76204ClientConfig")

local this
local subIDs = Q76204ClientConfig.SubIDs
local datas = Q76204ClientConfig.Datas
local npcs = Q76204ClientConfig.Npcs
local points = Q76204ClientConfig.Points

function Q7620401Trigger:OnPostDataPrepare()
    print("Q7620401Trigger - OnPostDataPrepare")
    this = self
end

function Q7620401Trigger:OnPostComponentPrepare()
    print("Q7620401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76204)
end

function Q7620401Trigger:TriggerIn()
    print("Q7620401Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7620401})
    this:DestroySelf()
end

function Q7620401Trigger:PreTriggerIn()
    print("Q7620401Trigger - PreTriggerIn")
end

function Q7620401Trigger:LightUpTriggerIn()
    print("Q7620401Trigger - LightUpTriggerIn")
end

function Q7620401Trigger:TriggerOut()
    print("Q7620401Trigger - TriggerOut")
end

return Q7620401Trigger
