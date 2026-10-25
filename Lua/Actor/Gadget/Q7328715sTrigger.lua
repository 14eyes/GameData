require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328715sTrigger = class("Q7328715sTrigger", GadgetActorProxy)
Q7328715sTrigger.defaultAlias = "Q7328715sTrigger"
local Q73287ClientConfig = require("Quest/Client/Q73287ClientConfig")

local this
local subIDs = Q73287ClientConfig.SubIDs
local npcs = Q73287ClientConfig.Npcs
local datas = Q73287ClientConfig.Datas

function Q7328715sTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328715sTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7328715sTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73287"):RequestInteraction(npcs.Npc4296Data.alias)
    this:DestroySelf()
end

function Q7328715sTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7328715sTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7328715sTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7328715sTrigger
