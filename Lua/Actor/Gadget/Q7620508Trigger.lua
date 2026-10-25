require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620508Trigger = class("Q7620508Trigger", GadgetActorProxy)
Q7620508Trigger.defaultAlias = "Q7620508Trigger"
local Q76205ClientConfig = require("Quest/Client/Q76205ClientConfig")

local this
local subIDs = Q76205ClientConfig.SubIDs
local datas = Q76205ClientConfig.Datas
local npcs = Q76205ClientConfig.Npcs
local points = Q76205ClientConfig.Points

function Q7620508Trigger:OnPostDataPrepare()
    print("Q7620508Trigger - OnPostDataPrepare")
    this = self
end

function Q7620508Trigger:OnPostComponentPrepare()
    print("Q7620508Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76205)
end

function Q7620508Trigger:TriggerIn()
    print("Q7620508Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7620508})
    this:DestroySelf()
end

function Q7620508Trigger:PreTriggerIn()
    print("Q7620508Trigger - PreTriggerIn")
end

function Q7620508Trigger:LightUpTriggerIn()
    print("Q7620508Trigger - LightUpTriggerIn")
end

function Q7620508Trigger:TriggerOut()
    print("Q7620508Trigger - TriggerOut")
end

return Q7620508Trigger
