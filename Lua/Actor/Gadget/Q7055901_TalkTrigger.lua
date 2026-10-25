require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7055901_TalkTrigger = class("Q7055901_TalkTrigger", GadgetActorProxy)
Q7055901_TalkTrigger.defaultAlias = "Q7055901_TalkTrigger"
local Q70559ClientConfig = require("Quest/Client/Q70559ClientConfig")

local this
local subIDs = Q70559ClientConfig.SubIDs
local npcs = Q70559ClientConfig.Npcs
local points = Q70559ClientConfig.Points

function Q7055901_TalkTrigger:OnPostDataPrepare()
    print("Q7055901_TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7055901_TalkTrigger:OnPostComponentPrepare()
    print("Q7055901_TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70559)
end

function Q7055901_TalkTrigger:TriggerIn()
    print("Q7055901_TalkTrigger - TriggerIn")
    actorMgr:GetActor("70559"):RequestInteraction(npcs.Npc31004.alias, "", true)
    this:DestroySelf()
end

function Q7055901_TalkTrigger:PreTriggerIn()
    print("Q7055901_TalkTrigger - PreTriggerIn")
end

function Q7055901_TalkTrigger:LightUpTriggerIn()
    print("Q7055901_TalkTrigger - LightUpTriggerIn")
end

function Q7055901_TalkTrigger:TriggerOut()
    print("Q7055901_TalkTrigger - TriggerOut")
end

return Q7055901_TalkTrigger
