require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502316Trigger = class("Q1502316Trigger", GadgetActorProxy)
Q1502316Trigger.defaultAlias = "Q1502316Trigger"
local Q15023ClientConfig = require("Quest/Client/Q15023ClientConfig")

local this
local subIDs = Q15023ClientConfig.SubIDs
local npcs = Q15023ClientConfig.Npcs
local points = Q15023ClientConfig.Points

function Q1502316Trigger:OnPostDataPrepare()
    print("Q1502316Trigger - OnPostDataPrepare")
    this = self
end

function Q1502316Trigger:OnPostComponentPrepare()
    print("Q1502316Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15023)
end

function Q1502316Trigger:TriggerIn()
    print("Q1502316Trigger - TriggerIn")
    actorMgr:GetActor("15023"):PlayCutsceneIndex(150230601, function(arg1)
        actorUtils.FinishQuestID(false, 1502316)
    end, nil, nil, false)

    this:DestroySelf()
end

function Q1502316Trigger:PreTriggerIn()
    print("Q1502316Trigger - PreTriggerIn")
end

function Q1502316Trigger:LightUpTriggerIn()
    print("Q1502316Trigger - LightUpTriggerIn")
end

function Q1502316Trigger:TriggerOut()
    print("Q1502316Trigger - TriggerOut")
end

return Q1502316Trigger
