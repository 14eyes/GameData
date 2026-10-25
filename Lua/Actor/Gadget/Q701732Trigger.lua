require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701732Trigger = class("Q701732Trigger", GadgetActorProxy)
Q701732Trigger.defaultAlias = "Q701732Trigger"
local Q7017ClientConfig = require("Quest/Client/Q7017ClientConfig")

local this
local subIDs = Q7017ClientConfig.SubIDs
local datas = Q7017ClientConfig.Datas
local npcs = Q7017ClientConfig.Npcs
local points = Q7017ClientConfig.Points

function Q701732Trigger:OnPostDataPrepare()
    print("Q701732Trigger - OnPostDataPrepare")
    this = self
end

function Q701732Trigger:OnPostComponentPrepare()
    print("Q701732Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7017)
end

function Q701732Trigger:TriggerIn()
    print("Q701732Trigger - TriggerIn")
    actorMgr:GetActor("7017"):ShowBlackScreenWithDialogText(0, 3, 0.5, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {701732})
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q701732Trigger:PreTriggerIn()
    print("Q701732Trigger - PreTriggerIn")
end

function Q701732Trigger:LightUpTriggerIn()
    print("Q701732Trigger - LightUpTriggerIn")
end

function Q701732Trigger:TriggerOut()
    print("Q701732Trigger - TriggerOut")
end

return Q701732Trigger
