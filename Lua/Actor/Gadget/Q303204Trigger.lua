require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303204Trigger = class("Q303204Trigger", GadgetActorProxy)
Q303204Trigger.defaultAlias = "Q303204Trigger"
local Q3032ClientConfig = require("Quest/Client/Q3032ClientConfig")

local this
local subIDs = Q3032ClientConfig.SubIDs
local npcs = Q3032ClientConfig.Npcs
local datas = Q3032ClientConfig.Datas

function Q303204Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303204Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q303204Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3032"):RequestInteraction(npcs.Npc1056Data.alias)
    this:DestroySelf()
end

function Q303204Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q303204Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q303204Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303204Trigger
