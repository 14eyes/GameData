require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602401Trigger_1 = class("Q7602401Trigger_1", GadgetActorProxy)
Q7602401Trigger_1.defaultAlias = "Q7602401Trigger_1"
local Q76024ClientConfig = require("Quest/Client/Q76024ClientConfig")

local this
local subIDs = Q76024ClientConfig.SubIDs
local datas = Q76024ClientConfig.Datas
local npcs = Q76024ClientConfig.Npcs
local points = Q76024ClientConfig.Points

function Q7602401Trigger_1:OnPostDataPrepare()
    print("Q7602401Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7602401Trigger_1:OnPostComponentPrepare()
    print("Q7602401Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(73, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76024)
end

function Q7602401Trigger_1:TriggerIn()
    print("Q7602401Trigger_1 - TriggerIn")
    actorMgr:GetActor("76024"):QuestNarratorTask(datas.NarratorWithId_760240101, nil)
    this:DestroySelf()
end

function Q7602401Trigger_1:PreTriggerIn()
    print("Q7602401Trigger_1 - PreTriggerIn")
end

function Q7602401Trigger_1:LightUpTriggerIn()
    print("Q7602401Trigger_1 - LightUpTriggerIn")
end

function Q7602401Trigger_1:TriggerOut()
    print("Q7602401Trigger_1 - TriggerOut")
end

return Q7602401Trigger_1
