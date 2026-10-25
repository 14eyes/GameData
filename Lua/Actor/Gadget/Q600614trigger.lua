require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600614trigger = class("Q600614trigger", GadgetActorProxy)
Q600614trigger.defaultAlias = "Q600614trigger"
local Q6006ClientConfig = require("Quest/Client/Q6006ClientConfig")

local this
local subIDs = Q6006ClientConfig.SubIDs
local datas = Q6006ClientConfig.Datas
local npcs = Q6006ClientConfig.Npcs
local points = Q6006ClientConfig.Points

function Q600614trigger:OnPostDataPrepare()
    print("Q600614trigger - OnPostDataPrepare")
    this = self
end

function Q600614trigger:OnPostComponentPrepare()
    print("Q600614trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(37, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6006)
end

function Q600614trigger:TriggerIn()
    print("Q600614trigger - TriggerIn")
    actorMgr:GetActor("6006"):ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 600614)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q600614trigger:PreTriggerIn()
    print("Q600614trigger - PreTriggerIn")
end

function Q600614trigger:LightUpTriggerIn()
    print("Q600614trigger - LightUpTriggerIn")
end

function Q600614trigger:TriggerOut()
    print("Q600614trigger - TriggerOut")
end

return Q600614trigger
