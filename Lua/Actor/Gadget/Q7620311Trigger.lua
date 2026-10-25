require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620311Trigger = class("Q7620311Trigger", GadgetActorProxy)
Q7620311Trigger.defaultAlias = "Q7620311Trigger"
local Q76203ClientConfig = require("Quest/Client/Q76203ClientConfig")

local this
local subIDs = Q76203ClientConfig.SubIDs
local datas = Q76203ClientConfig.Datas
local npcs = Q76203ClientConfig.Npcs
local points = Q76203ClientConfig.Points

function Q7620311Trigger:OnPostDataPrepare()
    print("Q7620311Trigger - OnPostDataPrepare")
    this = self
end

function Q7620311Trigger:OnPostComponentPrepare()
    print("Q7620311Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76203)
end

function Q7620311Trigger:TriggerIn()
    print("Q7620311Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7620311})
    this:DestroySelf()
end

function Q7620311Trigger:PreTriggerIn()
    print("Q7620311Trigger - PreTriggerIn")
end

function Q7620311Trigger:LightUpTriggerIn()
    print("Q7620311Trigger - LightUpTriggerIn")
end

function Q7620311Trigger:TriggerOut()
    print("Q7620311Trigger - TriggerOut")
end

return Q7620311Trigger
