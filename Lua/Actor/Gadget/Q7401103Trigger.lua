require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401103Trigger = class("Q7401103Trigger", GadgetActorProxy)
Q7401103Trigger.defaultAlias = "Q7401103Trigger"
local Q74011ClientConfig = require("Quest/Client/Q74011ClientConfig")

local this
local subIDs = Q74011ClientConfig.SubIDs
local npcs = Q74011ClientConfig.Npcs
local points = Q74011ClientConfig.Points
local datas = Q74011ClientConfig.Datas

function Q7401103Trigger:OnPostDataPrepare()
    print("[MainId: 74011][Trigger: Q7401103Trigger] OnPostDataPrepare")
    this = self
end

function Q7401103Trigger:OnPostComponentPrepare()
    print("[MainId: 74011][Trigger: Q7401103Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7401103Trigger:TriggerIn()
    print("[MainId: 74011][Trigger: Q7401103Trigger] TriggerIn")
    actorMgr:GetActor("74011"):RequestInteraction(npcs.Npc21037Data.alias)
    this:DestroySelf()
end

function Q7401103Trigger:PreTriggerIn()
    print("[MainId: 74011][Trigger: Q7401103Trigger] PreTriggerIn")
end

function Q7401103Trigger:LightUpTriggerIn()
    print("[MainId: 74011][Trigger: Q7401103Trigger] LightUpTriggerIn")
end

function Q7401103Trigger:TriggerOut()
    print("[MainId: 74011][Trigger: Q7401103Trigger] TriggerOut")
end

return Q7401103Trigger
