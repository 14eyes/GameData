require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020220Trigger = class("Q4020220Trigger", GadgetActorProxy)
Q4020220Trigger.defaultAlias = "Q4020220Trigger"
local Q40202ClientConfig = require("Quest/Client/Q40202ClientConfig")

local this
local subIDs = Q40202ClientConfig.SubIDs
local datas = Q40202ClientConfig.Datas
local npcs = Q40202ClientConfig.Npcs
local points = Q40202ClientConfig.Points

function Q4020220Trigger:OnPostDataPrepare()
    print("Q4020220Trigger - OnPostDataPrepare")
    this = self
end

function Q4020220Trigger:OnPostComponentPrepare()
    print("Q4020220Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(24, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40202)
end

function Q4020220Trigger:TriggerIn()
    print("Q4020220Trigger - TriggerIn")
    actorMgr:GetActor("40202"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 4020220)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q4020220Trigger:PreTriggerIn()
    print("Q4020220Trigger - PreTriggerIn")
end

function Q4020220Trigger:LightUpTriggerIn()
    print("Q4020220Trigger - LightUpTriggerIn")
end

function Q4020220Trigger:TriggerOut()
    print("Q4020220Trigger - TriggerOut")
end

return Q4020220Trigger
