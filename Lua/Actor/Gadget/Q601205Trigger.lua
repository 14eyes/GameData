require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601205Trigger = class("Q601205Trigger", GadgetActorProxy)
Q601205Trigger.defaultAlias = "Q601205Trigger"
local Q6012ClientConfig = require("Quest/Client/Q6012ClientConfig")

local this
local subIDs = Q6012ClientConfig.SubIDs
local datas = Q6012ClientConfig.Datas
local npcs = Q6012ClientConfig.Npcs
local points = Q6012ClientConfig.Points

function Q601205Trigger:OnPostDataPrepare()
    print("Q601205Trigger - OnPostDataPrepare")
    this = self
end

function Q601205Trigger:OnPostComponentPrepare()
    print("Q601205Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6012)
end

function Q601205Trigger:TriggerIn()
    print("Q601205Trigger - TriggerIn")
    actorMgr:GetActor("6012"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, nil, nil, nil, 0, false, true)
    actorMgr:GetActor("6012"):PlayCutsceneIndex(601205, function(arg1)
        actorUtils.FinishQuestID(false, 601205)
    end, nil, nil, false)
end

function Q601205Trigger:PreTriggerIn()
    print("Q601205Trigger - PreTriggerIn")
end

function Q601205Trigger:LightUpTriggerIn()
    print("Q601205Trigger - LightUpTriggerIn")
end

function Q601205Trigger:TriggerOut()
    print("Q601205Trigger - TriggerOut")
end

return Q601205Trigger
