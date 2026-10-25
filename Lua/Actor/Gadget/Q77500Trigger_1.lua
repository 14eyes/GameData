require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77500Trigger_1 = class("Q77500Trigger_1", GadgetActorProxy)
Q77500Trigger_1.defaultAlias = "Q77500Trigger_1"
local Q77500ClientConfig = require("Quest/Client/Q77500ClientConfig")

local this
local subIDs = Q77500ClientConfig.SubIDs
local datas = Q77500ClientConfig.Datas
local npcs = Q77500ClientConfig.Npcs
local points = Q77500ClientConfig.Points

function Q77500Trigger_1:OnPostDataPrepare()
    print("Q77500Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q77500Trigger_1:OnPostComponentPrepare()
    print("Q77500Trigger_1 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(55, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77500)
end

function Q77500Trigger_1:TriggerIn()
    print("Q77500Trigger_1 - TriggerIn")
    actorMgr:GetActor("77500"):QuestNarratorTask(datas.NarratorWithId_7750001, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7750001})
        this:DestroySelf()
    end)
end

function Q77500Trigger_1:PreTriggerIn()
    print("Q77500Trigger_1 - PreTriggerIn")
end

function Q77500Trigger_1:LightUpTriggerIn()
    print("Q77500Trigger_1 - LightUpTriggerIn")
end

function Q77500Trigger_1:TriggerOut()
    print("Q77500Trigger_1 - TriggerOut")
end

return Q77500Trigger_1
