require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7667314Trigger = class("Q7667314Trigger", GadgetActorProxy)
Q7667314Trigger.defaultAlias = "Q7667314Trigger"
local Q76673ClientConfig = require("Quest/Client/Q76673ClientConfig")

local this
local subIDs = Q76673ClientConfig.SubIDs
local datas = Q76673ClientConfig.Datas
local npcs = Q76673ClientConfig.Npcs
local points = Q76673ClientConfig.Points

function Q7667314Trigger:OnPostDataPrepare()
    print("Q7667314Trigger - OnPostDataPrepare")
    this = self
end

function Q7667314Trigger:OnPostComponentPrepare()
    print("Q7667314Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76673)
end

function Q7667314Trigger:TriggerIn()
    print("Q7667314Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7667314)
    this:DestroySelf()
end

function Q7667314Trigger:PreTriggerIn()
    print("Q7667314Trigger - PreTriggerIn")
end

function Q7667314Trigger:LightUpTriggerIn()
    print("Q7667314Trigger - LightUpTriggerIn")
end

function Q7667314Trigger:TriggerOut()
    print("Q7667314Trigger - TriggerOut")
end

return Q7667314Trigger
