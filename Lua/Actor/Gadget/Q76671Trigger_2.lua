require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76671Trigger_2 = class("Q76671Trigger_2", GadgetActorProxy)
Q76671Trigger_2.defaultAlias = "Q76671Trigger_2"
local Q76671ClientConfig = require("Quest/Client/Q76671ClientConfig")

local this
local subIDs = Q76671ClientConfig.SubIDs
local datas = Q76671ClientConfig.Datas
local npcs = Q76671ClientConfig.Npcs
local points = Q76671ClientConfig.Points

function Q76671Trigger_2:OnPostDataPrepare()
    print("Q76671Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q76671Trigger_2:OnPostComponentPrepare()
    print("Q76671Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76671)
end

function Q76671Trigger_2:TriggerIn()
    print("Q76671Trigger_2 - TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 7667101)
end

function Q76671Trigger_2:PreTriggerIn()
    print("Q76671Trigger_2 - PreTriggerIn")
end

function Q76671Trigger_2:LightUpTriggerIn()
    print("Q76671Trigger_2 - LightUpTriggerIn")
end

function Q76671Trigger_2:TriggerOut()
    print("Q76671Trigger_2 - TriggerOut")
end

return Q76671Trigger_2
