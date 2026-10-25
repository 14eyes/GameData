require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4023813Trigger = class("Q4023813Trigger", GadgetActorProxy)
Q4023813Trigger.defaultAlias = "Q4023813Trigger"
local Q40238ClientConfig = require("Quest/Client/Q40238ClientConfig")

local this
local subIDs = Q40238ClientConfig.SubIDs
local datas = Q40238ClientConfig.Datas
local npcs = Q40238ClientConfig.Npcs
local points = Q40238ClientConfig.Points

function Q4023813Trigger:OnPostDataPrepare()
    print("Q4023813Trigger - OnPostDataPrepare")
    this = self
end

function Q4023813Trigger:OnPostComponentPrepare()
    print("Q4023813Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40238)
end

function Q4023813Trigger:TriggerIn()
    print("Q4023813Trigger - TriggerIn")
end

function Q4023813Trigger:PreTriggerIn()
    print("Q4023813Trigger - PreTriggerIn")
end

function Q4023813Trigger:LightUpTriggerIn()
    print("Q4023813Trigger - LightUpTriggerIn")
    actorMgr:GetActor("40238"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, nil, nil, nil, 0, false, true)
    actorMgr:GetActor("40238"):PlayCutsceneIndex(4023813, function(arg1)
        actorMgr:GetActor("40238"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
        actorUtils.FinishQuestWithParam({false}, {4023813})
        this:DestroySelf()
    end, nil, nil, false)
end

function Q4023813Trigger:TriggerOut()
    print("Q4023813Trigger - TriggerOut")
end

return Q4023813Trigger
