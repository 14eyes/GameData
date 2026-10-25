require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21036ZDTalkTrigger = class("Q21036ZDTalkTrigger", GadgetActorProxy)
Q21036ZDTalkTrigger.defaultAlias = "Q21036ZDTalkTrigger"
local Q21036ClientConfig = require("Quest/Client/Q21036ClientConfig")

local this
local subIDs = Q21036ClientConfig.SubIDs
local npcs = Q21036ClientConfig.Npcs
local datas = Q21036ClientConfig.Datas

function Q21036ZDTalkTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q21036ZDTalkTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q21036ZDTalkTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("21036"):RequestInteraction(npcs.Npc2400Data.alias)
    this:DestroySelf()
end

function Q21036ZDTalkTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q21036ZDTalkTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q21036ZDTalkTrigger:TriggerOut()
    print("TriggerOut")
end

return Q21036ZDTalkTrigger
