require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76671Trigger_3 = class("Q76671Trigger_3", GadgetActorProxy)
Q76671Trigger_3.defaultAlias = "Q76671Trigger_3"
local Q76671ClientConfig = require("Quest/Client/Q76671ClientConfig")

local this
local subIDs = Q76671ClientConfig.SubIDs
local datas = Q76671ClientConfig.Datas
local npcs = Q76671ClientConfig.Npcs
local points = Q76671ClientConfig.Points

function Q76671Trigger_3:OnPostDataPrepare()
    print("Q76671Trigger_3 - OnPostDataPrepare")
    this = self
end

function Q76671Trigger_3:OnPostComponentPrepare()
    print("Q76671Trigger_3 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76671)
end

function Q76671Trigger_3:TriggerIn()
    print("Q76671Trigger_3 - TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 7667107)
end

function Q76671Trigger_3:PreTriggerIn()
    print("Q76671Trigger_3 - PreTriggerIn")
end

function Q76671Trigger_3:LightUpTriggerIn()
    print("Q76671Trigger_3 - LightUpTriggerIn")
end

function Q76671Trigger_3:TriggerOut()
    print("Q76671Trigger_3 - TriggerOut")
end

return Q76671Trigger_3
