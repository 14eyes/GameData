require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600724Trigger = class("Q600724Trigger", GadgetActorProxy)
Q600724Trigger.defaultAlias = "Q600724Trigger"
local Q6007ClientConfig = require("Quest/Client/Q6007ClientConfig")

local this
local subIDs = Q6007ClientConfig.SubIDs
local datas = Q6007ClientConfig.Datas
local npcs = Q6007ClientConfig.Npcs

function Q600724Trigger:OnPostDataPrepare()
    print("Q600724Trigger - OnPostDataPrepare")
    this = self
end

function Q600724Trigger:OnPostComponentPrepare()
    print("Q600724Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6007)
end

function Q600724Trigger:TriggerIn()
    print("Q600724Trigger - TriggerIn")
    actorMgr:GetActor("6007"):QuestNarratorTask(datas.NarratorWithId_600710, function(arg1)
        actorUtils.FinishQuestID(false, 600724)
    end)

    this:DestroySelf()
end

function Q600724Trigger:PreTriggerIn()
    print("Q600724Trigger - PreTriggerIn")
end

function Q600724Trigger:LightUpTriggerIn()
    print("Q600724Trigger - LightUpTriggerIn")
end

function Q600724Trigger:TriggerOut()
    print("Q600724Trigger - TriggerOut")
end

return Q600724Trigger
