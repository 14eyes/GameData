require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710021Trigger = class("Q7710021Trigger", GadgetActorProxy)
Q7710021Trigger.defaultAlias = "Q7710021Trigger"
local Q77100ClientConfig = require("Quest/Client/Q77100ClientConfig")

local this
local subIDs = Q77100ClientConfig.SubIDs
local datas = Q77100ClientConfig.Datas
local npcs = Q77100ClientConfig.Npcs
local points = Q77100ClientConfig.Points

function Q7710021Trigger:OnPostDataPrepare()
    print("Q7710021Trigger - OnPostDataPrepare")
    this = self
end

function Q7710021Trigger:OnPostComponentPrepare()
    print("Q7710021Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(11, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77100)
end

function Q7710021Trigger:TriggerIn()
    print("Q7710021Trigger - TriggerIn")
    actorMgr:GetActor("77100"):RequestInteraction(npcs.Npc22281.alias, "", true)
    this:DestroySelf()
end

function Q7710021Trigger:PreTriggerIn()
    print("Q7710021Trigger - PreTriggerIn")
end

function Q7710021Trigger:LightUpTriggerIn()
    print("Q7710021Trigger - LightUpTriggerIn")
end

function Q7710021Trigger:TriggerOut()
    print("Q7710021Trigger - TriggerOut")
end

return Q7710021Trigger
