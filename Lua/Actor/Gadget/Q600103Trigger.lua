require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600103Trigger = class("Q600103Trigger", GadgetActorProxy)
Q600103Trigger.defaultAlias = "Q600103Trigger"
local Q6001ClientConfig = require("Quest/Client/Q6001ClientConfig")

local this
local subIDs = Q6001ClientConfig.SubIDs
local datas = Q6001ClientConfig.Datas
local npcs = Q6001ClientConfig.Npcs
local points = Q6001ClientConfig.Points

function Q600103Trigger:OnPostDataPrepare()
    print("Q600103Trigger - OnPostDataPrepare")
    this = self
end

function Q600103Trigger:OnPostComponentPrepare()
    print("Q600103Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6001)
end

function Q600103Trigger:TriggerIn()
    print("Q600103Trigger - TriggerIn")
    actorMgr:GetActor("6001"):QuestNarratorTask(datas.NarratorWithId_600102, nil)
    actorUtils.FinishQuestID(false, 600103)
    this:DestroySelf()
end

function Q600103Trigger:PreTriggerIn()
    print("Q600103Trigger - PreTriggerIn")
end

function Q600103Trigger:LightUpTriggerIn()
    print("Q600103Trigger - LightUpTriggerIn")
end

function Q600103Trigger:TriggerOut()
    print("Q600103Trigger - TriggerOut")
end

return Q600103Trigger
