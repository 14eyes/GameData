require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60131Trigger = class("Q60131Trigger", GadgetActorProxy)
Q60131Trigger.defaultAlias = "Q60131Trigger"
local Q601ClientConfig = require("Quest/Client/Q601ClientConfig")

local this
local subIDs = Q601ClientConfig.SubIDs
local datas = Q601ClientConfig.Datas
local npcs = Q601ClientConfig.Npcs
local points = Q601ClientConfig.Points

function Q60131Trigger:OnPostDataPrepare()
    print("Q60131Trigger - OnPostDataPrepare")
    this = self
end

function Q60131Trigger:OnPostComponentPrepare()
    print("Q60131Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 601)
end

function Q60131Trigger:TriggerIn()
    print("Q60131Trigger - TriggerIn")
    actorMgr:GetActor("601"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 60131)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q60131Trigger:PreTriggerIn()
    print("Q60131Trigger - PreTriggerIn")
end

function Q60131Trigger:LightUpTriggerIn()
    print("Q60131Trigger - LightUpTriggerIn")
end

function Q60131Trigger:TriggerOut()
    print("Q60131Trigger - TriggerOut")
end

return Q60131Trigger
