require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020111Trigger = class("Q4020111Trigger", GadgetActorProxy)
Q4020111Trigger.defaultAlias = "Q4020111Trigger"
local Q40201ClientConfig = require("Quest/Client/Q40201ClientConfig")

local this
local subIDs = Q40201ClientConfig.SubIDs
local datas = Q40201ClientConfig.Datas
local npcs = Q40201ClientConfig.Npcs
local points = Q40201ClientConfig.Points

function Q4020111Trigger:OnPostDataPrepare()
    print("Q4020111Trigger - OnPostDataPrepare")
    this = self
end

function Q4020111Trigger:OnPostComponentPrepare()
    print("Q4020111Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40201)
end

function Q4020111Trigger:TriggerIn()
    print("Q4020111Trigger - TriggerIn")
end

function Q4020111Trigger:PreTriggerIn()
    print("Q4020111Trigger - PreTriggerIn")
end

function Q4020111Trigger:LightUpTriggerIn()
    print("Q4020111Trigger - LightUpTriggerIn")
    actorMgr:GetActor("40201"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 4020111)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q4020111Trigger:TriggerOut()
    print("Q4020111Trigger - TriggerOut")
end

return Q4020111Trigger
