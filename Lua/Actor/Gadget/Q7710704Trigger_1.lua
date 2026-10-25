require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710704Trigger_1 = class("Q7710704Trigger_1", GadgetActorProxy)
Q7710704Trigger_1.defaultAlias = "Q7710704Trigger_1"
local Q77107ClientConfig = require("Quest/Client/Q77107ClientConfig")

local this
local subIDs = Q77107ClientConfig.SubIDs
local datas = Q77107ClientConfig.Datas
local npcs = Q77107ClientConfig.Npcs
local points = Q77107ClientConfig.Points

function Q7710704Trigger_1:OnPostDataPrepare()
    print("Q7710704Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7710704Trigger_1:OnPostComponentPrepare()
    print("Q7710704Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77107)
end

function Q7710704Trigger_1:TriggerIn()
    print("Q7710704Trigger_1 - TriggerIn")
    actorMgr:GetActor("77107"):QuestNarratorTask(datas.NarratorWithId_7710716, nil)
    actorMgr:GetActor("77107"):CallDelay(9, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7710704})
    end)

    this:DestroySelf()
end

function Q7710704Trigger_1:PreTriggerIn()
    print("Q7710704Trigger_1 - PreTriggerIn")
end

function Q7710704Trigger_1:LightUpTriggerIn()
    print("Q7710704Trigger_1 - LightUpTriggerIn")
end

function Q7710704Trigger_1:TriggerOut()
    print("Q7710704Trigger_1 - TriggerOut")
end

return Q7710704Trigger_1
