require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600205Trigger = class("Q600205Trigger", GadgetActorProxy)
Q600205Trigger.defaultAlias = "Q600205Trigger"
local Q6002ClientConfig = require("Quest/Client/Q6002ClientConfig")

local this
local subIDs = Q6002ClientConfig.SubIDs
local datas = Q6002ClientConfig.Datas
local npcs = Q6002ClientConfig.Npcs
local points = Q6002ClientConfig.Points

function Q600205Trigger:OnPostDataPrepare()
    print("Q600205Trigger - OnPostDataPrepare")
    this = self
end

function Q600205Trigger:OnPostComponentPrepare()
    print("Q600205Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 10, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6002)
end

function Q600205Trigger:TriggerIn()
    print("Q600205Trigger - TriggerIn")
    local questVar = actorMgr:GetActor("6002"):GetQuestVar(600205, 0)
    if questVar == 0 then
        actorMgr:GetActor("6002"):QuestNarratorTask(datas.NarratorWithId_600206, nil)
    elseif questVar == 1 then
        actorMgr:GetActor("6002"):QuestNarratorTask(datas.NarratorWithId_600208, nil)
    end

    this:DestroySelf()
end

function Q600205Trigger:PreTriggerIn()
    print("Q600205Trigger - PreTriggerIn")
end

function Q600205Trigger:LightUpTriggerIn()
    print("Q600205Trigger - LightUpTriggerIn")
end

function Q600205Trigger:TriggerOut()
    print("Q600205Trigger - TriggerOut")
end

return Q600205Trigger
