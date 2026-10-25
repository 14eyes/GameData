require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710419Trigger = class("Q7710419Trigger", GadgetActorProxy)
Q7710419Trigger.defaultAlias = "Q7710419Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710419Trigger:OnPostDataPrepare()
    print("Q7710419Trigger - OnPostDataPrepare")
    this = self
end

function Q7710419Trigger:OnPostComponentPrepare()
    print("Q7710419Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(4.6728435, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710419Trigger:TriggerIn()
    print("Q7710419Trigger - TriggerIn")
    actorMgr:GetActor("77104"):RequestInteraction(npcs.Npc7655.alias, "", true)
    this:DestroySelf()
end

function Q7710419Trigger:PreTriggerIn()
    print("Q7710419Trigger - PreTriggerIn")
end

function Q7710419Trigger:LightUpTriggerIn()
    print("Q7710419Trigger - LightUpTriggerIn")
end

function Q7710419Trigger:TriggerOut()
    print("Q7710419Trigger - TriggerOut")
end

return Q7710419Trigger
