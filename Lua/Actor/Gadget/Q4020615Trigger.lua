require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020615Trigger = class("Q4020615Trigger", GadgetActorProxy)
Q4020615Trigger.defaultAlias = "Q4020615Trigger"
local Q40206ClientConfig = require("Quest/Client/Q40206ClientConfig")

local this
local subIDs = Q40206ClientConfig.SubIDs
local datas = Q40206ClientConfig.Datas
local npcs = Q40206ClientConfig.Npcs
local points = Q40206ClientConfig.Points

function Q4020615Trigger:OnPostDataPrepare()
    print("Q4020615Trigger - OnPostDataPrepare")
    this = self
end

function Q4020615Trigger:OnPostComponentPrepare()
    print("Q4020615Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40206)
end

function Q4020615Trigger:TriggerIn()
    print("Q4020615Trigger - TriggerIn")
    actorMgr:GetActor("40206"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
    actorUtils.FinishQuestID(false, 4020615)
    this:DestroySelf()
end

function Q4020615Trigger:PreTriggerIn()
    print("Q4020615Trigger - PreTriggerIn")
end

function Q4020615Trigger:LightUpTriggerIn()
    print("Q4020615Trigger - LightUpTriggerIn")
end

function Q4020615Trigger:TriggerOut()
    print("Q4020615Trigger - TriggerOut")
end

return Q4020615Trigger
