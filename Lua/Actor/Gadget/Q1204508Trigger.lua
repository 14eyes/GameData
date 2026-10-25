require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1204508Trigger = class("Q1204508Trigger", GadgetActorProxy)
Q1204508Trigger.defaultAlias = "Q1204508Trigger"
local Q12045ClientConfig = require("Quest/Client/Q12045ClientConfig")

local this
local subIDs = Q12045ClientConfig.SubIDs
local datas = Q12045ClientConfig.Datas
local npcs = Q12045ClientConfig.Npcs
local points = Q12045ClientConfig.Points

function Q1204508Trigger:OnPostDataPrepare()
    print("Q1204508Trigger - OnPostDataPrepare")
    this = self
end

function Q1204508Trigger:OnPostComponentPrepare()
    print("Q1204508Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 12045)
end

function Q1204508Trigger:TriggerIn()
    print("Q1204508Trigger - TriggerIn")
    this:DestroySelf()
end

function Q1204508Trigger:PreTriggerIn()
    print("Q1204508Trigger - PreTriggerIn")
end

function Q1204508Trigger:LightUpTriggerIn()
    print("Q1204508Trigger - LightUpTriggerIn")
    actorMgr:GetActor("12045"):RequestInteraction(npcs.Npc1097.alias, "", true)
end

function Q1204508Trigger:TriggerOut()
    print("Q1204508Trigger - TriggerOut")
end

return Q1204508Trigger
