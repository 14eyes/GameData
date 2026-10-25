require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1204713Trigger = class("Q1204713Trigger", GadgetActorProxy)
Q1204713Trigger.defaultAlias = "Q1204713Trigger"
local Q12047ClientConfig = require("Quest/Client/Q12047ClientConfig")

local this
local subIDs = Q12047ClientConfig.SubIDs
local datas = Q12047ClientConfig.Datas
local npcs = Q12047ClientConfig.Npcs
local points = Q12047ClientConfig.Points

function Q1204713Trigger:OnPostDataPrepare()
    print("Q1204713Trigger - OnPostDataPrepare")
    this = self
end

function Q1204713Trigger:OnPostComponentPrepare()
    print("Q1204713Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 12047)
end

function Q1204713Trigger:TriggerIn()
    print("Q1204713Trigger - TriggerIn")
end

function Q1204713Trigger:PreTriggerIn()
    print("Q1204713Trigger - PreTriggerIn")
end

function Q1204713Trigger:LightUpTriggerIn()
    print("Q1204713Trigger - LightUpTriggerIn")
    actorMgr:GetActor("12047"):ShowBlackScreen(0.5, 0.5, 0.5, nil, nil, nil, "", false, true)
    actorMgr:GetActor("12047"):PlayCutsceneIndex(1204713, function(arg1)
        actorUtils.FinishQuestID(false, 1204713)
        this:DestroySelf()
    end, nil, nil, false)
end

function Q1204713Trigger:TriggerOut()
    print("Q1204713Trigger - TriggerOut")
end

return Q1204713Trigger
