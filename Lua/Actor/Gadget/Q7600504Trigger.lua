require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600504Trigger = class("Q7600504Trigger", GadgetActorProxy)
Q7600504Trigger.defaultAlias = "Q7600504Trigger"
local Q76005ClientConfig = require("Quest/Client/Q76005ClientConfig")

local this
local subIDs = Q76005ClientConfig.SubIDs
local datas = Q76005ClientConfig.Datas
local npcs = Q76005ClientConfig.Npcs
local points = Q76005ClientConfig.Points

function Q7600504Trigger:OnPostDataPrepare()
    print("Q7600504Trigger - OnPostDataPrepare")
    this = self
end

function Q7600504Trigger:OnPostComponentPrepare()
    print("Q7600504Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76005)
end

function Q7600504Trigger:TriggerIn()
    print("Q7600504Trigger - TriggerIn")
    actorMgr:GetActor("76005"):RequestInteraction(npcs.Npc22137.alias, "", true)
    this:DestroySelf()
end

function Q7600504Trigger:PreTriggerIn()
    print("Q7600504Trigger - PreTriggerIn")
end

function Q7600504Trigger:LightUpTriggerIn()
    print("Q7600504Trigger - LightUpTriggerIn")
end

function Q7600504Trigger:TriggerOut()
    print("Q7600504Trigger - TriggerOut")
end

return Q7600504Trigger
