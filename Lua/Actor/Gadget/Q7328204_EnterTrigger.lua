require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328204_EnterTrigger = class("Q7328204_EnterTrigger", GadgetActorProxy)
Q7328204_EnterTrigger.defaultAlias = "Q7328204_EnterTrigger"
local Q73282ClientConfig = require("Quest/Client/Q73282ClientConfig")

local this
local subIDs = Q73282ClientConfig.SubIDs
local npcs = Q73282ClientConfig.Npcs
local datas = Q73282ClientConfig.Datas

function Q7328204_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328204_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7328204_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73282"):RequestInteraction(npcs.Npc20842Data.alias)
    this:DestroySelf()
end

function Q7328204_EnterTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7328204_EnterTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7328204_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7328204_EnterTrigger
