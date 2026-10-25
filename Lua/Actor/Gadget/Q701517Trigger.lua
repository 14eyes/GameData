require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701517Trigger = class("Q701517Trigger", GadgetActorProxy)
Q701517Trigger.defaultAlias = "Q701517Trigger"
local Q7015ClientConfig = require("Quest/Client/Q7015ClientConfig")

local this
local subIDs = Q7015ClientConfig.SubIDs
local datas = Q7015ClientConfig.Datas
local npcs = Q7015ClientConfig.Npcs
local points = Q7015ClientConfig.Points

function Q701517Trigger:OnPostDataPrepare()
    print("Q701517Trigger - OnPostDataPrepare")
    this = self
end

function Q701517Trigger:OnPostComponentPrepare()
    print("Q701517Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7015)
end

function Q701517Trigger:TriggerIn()
    print("Q701517Trigger - TriggerIn")
    actorMgr:GetActor("7015"):ShowBlackScreen(0, 1, 0, nil, nil, nil, "", true, true)
    actorMgr:GetActor("7015"):RequestInteraction(npcs.Npc17519.alias, "", true)
    this:DestroySelf()
end

function Q701517Trigger:PreTriggerIn()
    print("Q701517Trigger - PreTriggerIn")
end

function Q701517Trigger:LightUpTriggerIn()
    print("Q701517Trigger - LightUpTriggerIn")
end

function Q701517Trigger:TriggerOut()
    print("Q701517Trigger - TriggerOut")
end

return Q701517Trigger
