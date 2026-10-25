require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76671Trigger_1 = class("Q76671Trigger_1", GadgetActorProxy)
Q76671Trigger_1.defaultAlias = "Q76671Trigger_1"
local Q76671ClientConfig = require("Quest/Client/Q76671ClientConfig")

local this
local subIDs = Q76671ClientConfig.SubIDs
local datas = Q76671ClientConfig.Datas
local npcs = Q76671ClientConfig.Npcs
local points = Q76671ClientConfig.Points

function Q76671Trigger_1:OnPostDataPrepare()
    print("Q76671Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q76671Trigger_1:OnPostComponentPrepare()
    print("Q76671Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76671)
end

function Q76671Trigger_1:TriggerIn()
    print("Q76671Trigger_1 - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("76671"):QuestNarratorTask(datas.NarratorWithId_1, nil)
end

function Q76671Trigger_1:PreTriggerIn()
    print("Q76671Trigger_1 - PreTriggerIn")
end

function Q76671Trigger_1:LightUpTriggerIn()
    print("Q76671Trigger_1 - LightUpTriggerIn")
end

function Q76671Trigger_1:TriggerOut()
    print("Q76671Trigger_1 - TriggerOut")
end

return Q76671Trigger_1
