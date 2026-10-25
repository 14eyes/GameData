require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73686TriggerTalk = class("Q73686TriggerTalk", GadgetActorProxy)
Q73686TriggerTalk.defaultAlias = "Q73686TriggerTalk"
local Q73686ClientConfig = require("Quest/Client/Q73686ClientConfig")

local this
local subIDs = Q73686ClientConfig.SubIDs
local npcs = Q73686ClientConfig.Npcs
local datas = Q73686ClientConfig.Datas

function Q73686TriggerTalk:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73686TriggerTalk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(16, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73686TriggerTalk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73686"):RequestInteraction(npcs.Npc13070Data.alias)
    this:DestroySelf()
end

function Q73686TriggerTalk:TriggerOut()
    print("TriggerOut")
end

return Q73686TriggerTalk
