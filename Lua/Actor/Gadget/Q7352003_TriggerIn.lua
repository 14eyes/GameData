require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7352003_TriggerIn = class("Q7352003_TriggerIn", GadgetActorProxy)
Q7352003_TriggerIn.defaultAlias = "Q7352003_TriggerIn"
local Q73520ClientConfig = require("Quest/Client/Q73520ClientConfig")

local this
local subIDs = Q73520ClientConfig.SubIDs
local npcs = Q73520ClientConfig.Npcs
local points = Q73520ClientConfig.Points
local datas = Q73520ClientConfig.Datas

function Q7352003_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7352003_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7352003_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73520"):RequestInteraction(npcs.Npc13254Data.alias)
    this:DestroySelf()
end

function Q7352003_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7352003_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7352003_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q7352003_TriggerIn
