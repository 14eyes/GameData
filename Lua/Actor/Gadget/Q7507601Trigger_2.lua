require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7507601Trigger_2 = class("Q7507601Trigger_2", GadgetActorProxy)
Q7507601Trigger_2.defaultAlias = "Q7507601Trigger_2"
local Q75076ClientConfig = require("Quest/Client/Q75076ClientConfig")

local this
local subIDs = Q75076ClientConfig.SubIDs
local datas = Q75076ClientConfig.Datas
local npcs = Q75076ClientConfig.Npcs
local points = Q75076ClientConfig.Points

function Q7507601Trigger_2:OnPostDataPrepare()
    print("Q7507601Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q7507601Trigger_2:OnPostComponentPrepare()
    print("Q7507601Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75076)
end

function Q7507601Trigger_2:TriggerIn()
    print("Q7507601Trigger_2 - TriggerIn")
    actorUtils.FinishQuestID(false, 7507601)
    this:DestroySelf()
end

function Q7507601Trigger_2:PreTriggerIn()
    print("Q7507601Trigger_2 - PreTriggerIn")
end

function Q7507601Trigger_2:LightUpTriggerIn()
    print("Q7507601Trigger_2 - LightUpTriggerIn")
end

function Q7507601Trigger_2:TriggerOut()
    print("Q7507601Trigger_2 - TriggerOut")
end

return Q7507601Trigger_2
