require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600205Trigger_1 = class("Q600205Trigger_1", GadgetActorProxy)
Q600205Trigger_1.defaultAlias = "Q600205Trigger_1"
local Q6002ClientConfig = require("Quest/Client/Q6002ClientConfig")

local this
local subIDs = Q6002ClientConfig.SubIDs
local datas = Q6002ClientConfig.Datas
local npcs = Q6002ClientConfig.Npcs
local points = Q6002ClientConfig.Points

function Q600205Trigger_1:OnPostDataPrepare()
    print("Q600205Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q600205Trigger_1:OnPostComponentPrepare()
    print("Q600205Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6002)
end

function Q600205Trigger_1:TriggerIn()
    print("Q600205Trigger_1 - TriggerIn")
    local questVar = actorMgr:GetActor("6002"):GetQuestVar(600205, 0)
    if questVar == 0 then
        actorMgr:GetActor("6002"):QuestNarratorTask(datas.NarratorWithId_600208, nil)
    elseif questVar == 1 then
        actorMgr:GetActor("6002"):QuestNarratorTask(datas.NarratorWithId_600207, nil)
    end

    this:DestroySelf()
end

function Q600205Trigger_1:PreTriggerIn()
    print("Q600205Trigger_1 - PreTriggerIn")
end

function Q600205Trigger_1:LightUpTriggerIn()
    print("Q600205Trigger_1 - LightUpTriggerIn")
end

function Q600205Trigger_1:TriggerOut()
    print("Q600205Trigger_1 - TriggerOut")
end

return Q600205Trigger_1
