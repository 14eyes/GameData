require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21035Trigger1 = class("Q21035Trigger1", GadgetActorProxy)
Q21035Trigger1.defaultAlias = "Q21035Trigger1"
local Q21035ClientConfig = require("Quest/Client/Q21035ClientConfig")

local this
local subIDs = Q21035ClientConfig.SubIDs
local npcs = Q21035ClientConfig.Npcs
local datas = Q21035ClientConfig.Datas

function Q21035Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q21035Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q21035Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("21035"):RequestInteraction(npcs.Npc2400Data.alias)
    this:DestroySelf()
end

function Q21035Trigger1:PreTriggerIn()
    print("PreTriggerIn")
end

function Q21035Trigger1:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q21035Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q21035Trigger1
