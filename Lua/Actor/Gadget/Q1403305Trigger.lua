require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403305Trigger = class("Q1403305Trigger", GadgetActorProxy)
Q1403305Trigger.defaultAlias = "Q1403305Trigger"
local Q14033ClientConfig = require("Quest/Client/Q14033ClientConfig")

local this
local subIDs = Q14033ClientConfig.SubIDs
local datas = Q14033ClientConfig.Datas
local npcs = Q14033ClientConfig.Npcs
local points = Q14033ClientConfig.Points

function Q1403305Trigger:OnPostDataPrepare()
    print("Q1403305Trigger - OnPostDataPrepare")
    this = self
end

function Q1403305Trigger:OnPostComponentPrepare()
    print("Q1403305Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14033)
end

function Q1403305Trigger:TriggerIn()
    print("Q1403305Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1403305)
    this:DestroySelf()
end

function Q1403305Trigger:PreTriggerIn()
    print("Q1403305Trigger - PreTriggerIn")
end

function Q1403305Trigger:LightUpTriggerIn()
    print("Q1403305Trigger - LightUpTriggerIn")
end

function Q1403305Trigger:TriggerOut()
    print("Q1403305Trigger - TriggerOut")
end

return Q1403305Trigger
