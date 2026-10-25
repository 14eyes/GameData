require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403307Trigger = class("Q1403307Trigger", GadgetActorProxy)
Q1403307Trigger.defaultAlias = "Q1403307Trigger"
local Q14033ClientConfig = require("Quest/Client/Q14033ClientConfig")

local this
local subIDs = Q14033ClientConfig.SubIDs
local datas = Q14033ClientConfig.Datas
local npcs = Q14033ClientConfig.Npcs
local points = Q14033ClientConfig.Points

function Q1403307Trigger:OnPostDataPrepare()
    print("Q1403307Trigger - OnPostDataPrepare")
    this = self
end

function Q1403307Trigger:OnPostComponentPrepare()
    print("Q1403307Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14033)
end

function Q1403307Trigger:TriggerIn()
    print("Q1403307Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1403307)
    this:DestroySelf()
end

function Q1403307Trigger:PreTriggerIn()
    print("Q1403307Trigger - PreTriggerIn")
end

function Q1403307Trigger:LightUpTriggerIn()
    print("Q1403307Trigger - LightUpTriggerIn")
end

function Q1403307Trigger:TriggerOut()
    print("Q1403307Trigger - TriggerOut")
end

return Q1403307Trigger
