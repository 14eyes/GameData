require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701734Trigger = class("Q701734Trigger", GadgetActorProxy)
Q701734Trigger.defaultAlias = "Q701734Trigger"
local Q7017ClientConfig = require("Quest/Client/Q7017ClientConfig")

local this
local subIDs = Q7017ClientConfig.SubIDs
local datas = Q7017ClientConfig.Datas
local npcs = Q7017ClientConfig.Npcs
local points = Q7017ClientConfig.Points

function Q701734Trigger:OnPostDataPrepare()
    print("Q701734Trigger - OnPostDataPrepare")
    this = self
end

function Q701734Trigger:OnPostComponentPrepare()
    print("Q701734Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7017)
end

function Q701734Trigger:TriggerIn()
    print("Q701734Trigger - TriggerIn")
    actorMgr:GetActor("7017"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {701734})
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q701734Trigger:PreTriggerIn()
    print("Q701734Trigger - PreTriggerIn")
end

function Q701734Trigger:LightUpTriggerIn()
    print("Q701734Trigger - LightUpTriggerIn")
end

function Q701734Trigger:TriggerOut()
    print("Q701734Trigger - TriggerOut")
end

return Q701734Trigger
