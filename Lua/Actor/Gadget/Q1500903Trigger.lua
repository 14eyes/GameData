require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500903Trigger = class("Q1500903Trigger", GadgetActorProxy)
Q1500903Trigger.defaultAlias = "Q1500903Trigger"
local Q15009ClientConfig = require("Quest/Client/Q15009ClientConfig")

local this
local subIDs = Q15009ClientConfig.SubIDs
local datas = Q15009ClientConfig.Datas
local npcs = Q15009ClientConfig.Npcs
local points = Q15009ClientConfig.Points

function Q1500903Trigger:OnPostDataPrepare()
    print("Q1500903Trigger - OnPostDataPrepare")
    this = self
end

function Q1500903Trigger:OnPostComponentPrepare()
    print("Q1500903Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 4, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15009)
end

function Q1500903Trigger:TriggerIn()
    print("Q1500903Trigger - TriggerIn")
    actorMgr:GetActor("15009"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 1500903)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1500903Trigger:PreTriggerIn()
    print("Q1500903Trigger - PreTriggerIn")
end

function Q1500903Trigger:LightUpTriggerIn()
    print("Q1500903Trigger - LightUpTriggerIn")
end

function Q1500903Trigger:TriggerOut()
    print("Q1500903Trigger - TriggerOut")
end

return Q1500903Trigger
