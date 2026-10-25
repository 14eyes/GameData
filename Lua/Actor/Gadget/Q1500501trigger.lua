require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500501trigger = class("Q1500501trigger", GadgetActorProxy)
Q1500501trigger.defaultAlias = "Q1500501trigger"
local Q15005ClientConfig = require("Quest/Client/Q15005ClientConfig")

local this
local subIDs = Q15005ClientConfig.SubIDs
local datas = Q15005ClientConfig.Datas
local npcs = Q15005ClientConfig.Npcs
local points = Q15005ClientConfig.Points

function Q1500501trigger:OnPostDataPrepare()
    print("Q1500501trigger - OnPostDataPrepare")
    this = self
end

function Q1500501trigger:OnPostComponentPrepare()
    print("Q1500501trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15005)
end

function Q1500501trigger:TriggerIn()
    print("Q1500501trigger - TriggerIn")
    actorMgr:GetActor("15005"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("15005"):RequestInteraction(npcs.Npc14227.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1500501trigger:PreTriggerIn()
    print("Q1500501trigger - PreTriggerIn")
end

function Q1500501trigger:LightUpTriggerIn()
    print("Q1500501trigger - LightUpTriggerIn")
end

function Q1500501trigger:TriggerOut()
    print("Q1500501trigger - TriggerOut")
end

return Q1500501trigger
