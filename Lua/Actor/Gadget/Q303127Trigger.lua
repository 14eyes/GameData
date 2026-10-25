require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303127Trigger = class("Q303127Trigger", GadgetActorProxy)
Q303127Trigger.defaultAlias = "Q303127Trigger"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303127Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303127Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q303127Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 303127)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q303127Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q303127Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q303127Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303127Trigger
