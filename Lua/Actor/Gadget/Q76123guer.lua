require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76123guer = class("Q76123guer", GadgetActorProxy)
Q76123guer.defaultAlias = "Q76123guer"
local Q76123ClientConfig = require("Quest/Client/Q76123ClientConfig")

local this
local subIDs = Q76123ClientConfig.SubIDs
local npcs = Q76123ClientConfig.Npcs

function Q76123guer:OnPostDataPrepare()
    print("Q76123guer - OnPostDataPrepare")
    this = self
end

function Q76123guer:OnPostComponentPrepare()
    print("Q76123guer - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76123)
end

function Q76123guer:TriggerIn()
    print("Q76123guer - TriggerIn")
end

function Q76123guer:PreTriggerIn()
    print("Q76123guer - PreTriggerIn")
end

function Q76123guer:LightUpTriggerIn()
    print("Q76123guer - LightUpTriggerIn")
end

function Q76123guer:TriggerOut()
    print("Q76123guer - TriggerOut")
    actorMgr:GetActor("76123"):DestroyQuestNpcActor(npcs.Npc1318.alias, 3)
    this:DestroySelf()
end

return Q76123guer
