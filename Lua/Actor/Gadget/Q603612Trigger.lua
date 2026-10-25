require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603612Trigger = class("Q603612Trigger", GadgetActorProxy)
Q603612Trigger.defaultAlias = "Q603612Trigger"
local Q6036ClientConfig = require("Quest/Client/Q6036ClientConfig")

local this
local subIDs = Q6036ClientConfig.SubIDs
local datas = Q6036ClientConfig.Datas
local npcs = Q6036ClientConfig.Npcs
local points = Q6036ClientConfig.Points

function Q603612Trigger:OnPostDataPrepare()
    print("Q603612Trigger - OnPostDataPrepare")
    this = self
end

function Q603612Trigger:OnPostComponentPrepare()
    print("Q603612Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6036)
end

function Q603612Trigger:TriggerIn()
    print("Q603612Trigger - TriggerIn")
    actorMgr:GetActor("6036"):PlayCutsceneIndex(60361201, function(arg1)
        actorMgr:GetActor("6036"):ShowBlackScreen(0, 0.5, 0, nil, nil, nil, "", false, true)
        actorUtils.FinishQuestID(false, 603612)
        this:DestroySelf()
    end, nil, nil, false)
end

function Q603612Trigger:PreTriggerIn()
    print("Q603612Trigger - PreTriggerIn")
end

function Q603612Trigger:LightUpTriggerIn()
    print("Q603612Trigger - LightUpTriggerIn")
end

function Q603612Trigger:TriggerOut()
    print("Q603612Trigger - TriggerOut")
end

return Q603612Trigger
