require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614204Trigger = class("Q7614204Trigger", GadgetActorProxy)
Q7614204Trigger.defaultAlias = "Q7614204Trigger"
local Q76142ClientConfig = require("Quest/Client/Q76142ClientConfig")

local this
local subIDs = Q76142ClientConfig.SubIDs
local datas = Q76142ClientConfig.Datas
local npcs = Q76142ClientConfig.Npcs
local points = Q76142ClientConfig.Points

function Q7614204Trigger:OnPostDataPrepare()
    print("Q7614204Trigger - OnPostDataPrepare")
    this = self
end

function Q7614204Trigger:OnPostComponentPrepare()
    print("Q7614204Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76142)
end

function Q7614204Trigger:TriggerIn()
    print("Q7614204Trigger - TriggerIn")
    actorMgr:GetActor("76142"):RequestInteraction(npcs.Npc22363.alias, "", true)
    this:DestroySelf()
end

function Q7614204Trigger:PreTriggerIn()
    print("Q7614204Trigger - PreTriggerIn")
end

function Q7614204Trigger:LightUpTriggerIn()
    print("Q7614204Trigger - LightUpTriggerIn")
end

function Q7614204Trigger:TriggerOut()
    print("Q7614204Trigger - TriggerOut")
end

return Q7614204Trigger
