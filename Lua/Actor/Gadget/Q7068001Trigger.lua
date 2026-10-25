require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7068001Trigger = class("Q7068001Trigger", GadgetActorProxy)
Q7068001Trigger.defaultAlias = "Q7068001Trigger"
local Q70680ClientConfig = require("Quest/Client/Q70680ClientConfig")

local this
local subIDs = Q70680ClientConfig.SubIDs
local npcs = Q70680ClientConfig.Npcs
local points = Q70680ClientConfig.Points

function Q7068001Trigger:OnPostDataPrepare()
    print("[MainId: 70680][Trigger: Q7068001Trigger] OnPostDataPrepare")
    this = self
end

function Q7068001Trigger:OnPostComponentPrepare()
    print("[MainId: 70680][Trigger: Q7068001Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70680)
end

function Q7068001Trigger:TriggerIn()
    print("[MainId: 70680][Trigger: Q7068001Trigger] TriggerIn")
    actorMgr:GetActor("70680"):RequestInteraction(npcs.Npc9500Data.alias, "", true)
end

function Q7068001Trigger:PreTriggerIn()
    print("[MainId: 70680][Trigger: Q7068001Trigger] PreTriggerIn")
end

function Q7068001Trigger:LightUpTriggerIn()
    print("[MainId: 70680][Trigger: Q7068001Trigger] LightUpTriggerIn")
end

function Q7068001Trigger:TriggerOut()
    print("[MainId: 70680][Trigger: Q7068001Trigger] TriggerOut")
end

return Q7068001Trigger
