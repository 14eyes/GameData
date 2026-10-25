require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006104Trigger = class("Q7006104Trigger", GadgetActorProxy)
Q7006104Trigger.defaultAlias = "Q7006104Trigger"
local Q70061ClientConfig = require("Quest/Client/Q70061ClientConfig")

local this
local subIDs = Q70061ClientConfig.SubIDs
local datas = Q70061ClientConfig.Datas
local npcs = Q70061ClientConfig.Npcs
local points = Q70061ClientConfig.Points

function Q7006104Trigger:OnPostDataPrepare()
    print("Q7006104Trigger - OnPostDataPrepare")
    this = self
end

function Q7006104Trigger:OnPostComponentPrepare()
    print("Q7006104Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(18, 50, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70061)
end

function Q7006104Trigger:TriggerIn()
    print("Q7006104Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006104)
    this:DestroySelf()
end

function Q7006104Trigger:PreTriggerIn()
    print("Q7006104Trigger - PreTriggerIn")
end

function Q7006104Trigger:LightUpTriggerIn()
    print("Q7006104Trigger - LightUpTriggerIn")
end

function Q7006104Trigger:TriggerOut()
    print("Q7006104Trigger - TriggerOut")
end

return Q7006104Trigger
