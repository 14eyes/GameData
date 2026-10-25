require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007602Trigger = class("Q7007602Trigger", GadgetActorProxy)
Q7007602Trigger.defaultAlias = "Q7007602Trigger"
local Q70076ClientConfig = require("Quest/Client/Q70076ClientConfig")

local this
local subIDs = Q70076ClientConfig.SubIDs
local datas = Q70076ClientConfig.Datas
local points = Q70076ClientConfig.Points

function Q7007602Trigger:OnPostDataPrepare()
    print("Q7007602Trigger - OnPostDataPrepare")
    this = self
end

function Q7007602Trigger:OnPostComponentPrepare()
    print("Q7007602Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(18, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70076)
end

function Q7007602Trigger:TriggerIn()
    print("Q7007602Trigger - TriggerIn")
    actorMgr:GetActor("70076"):QuestNarratorTask(datas.NarratorWithId_7006737, function(arg1)
        actorUtils.FinishQuestID(false, 7006737)
        this:DestroySelf()
    end)
end

function Q7007602Trigger:PreTriggerIn()
    print("Q7007602Trigger - PreTriggerIn")
end

function Q7007602Trigger:LightUpTriggerIn()
    print("Q7007602Trigger - LightUpTriggerIn")
end

function Q7007602Trigger:TriggerOut()
    print("Q7007602Trigger - TriggerOut")
end

return Q7007602Trigger
