require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500613_HGTransTrigger = class("Q7500613_HGTransTrigger", GadgetActorProxy)
Q7500613_HGTransTrigger.defaultAlias = "Q7500613_HGTransTrigger"
local Q75006ClientConfig = require("Quest/Client/Q75006ClientConfig")

local this
local subIDs = Q75006ClientConfig.SubIDs
local npcs = Q75006ClientConfig.Npcs
local datas = Q75006ClientConfig.Datas

function Q7500613_HGTransTrigger:OnPostDataPrepare()
    print("[MainId: 75006][Trigger: Q7500613_HGTransTrigger] OnPostDataPrepare")
    this = self
end

function Q7500613_HGTransTrigger:OnPostComponentPrepare()
    print("[MainId: 75006][Trigger: Q7500613_HGTransTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75006)
end

function Q7500613_HGTransTrigger:TriggerIn()
    print("[MainId: 75006][Trigger: Q7500613_HGTransTrigger] TriggerIn")
    actorMgr:GetActor("75006"):TransmitPlayerWithDialogTextByQuestId(7500613, 2, datas.DialogsId, 5)
    this:DestroySelf()
end

function Q7500613_HGTransTrigger:PreTriggerIn()
    print("[MainId: 75006][Trigger: Q7500613_HGTransTrigger] PreTriggerIn")
end

function Q7500613_HGTransTrigger:LightUpTriggerIn()
    print("[MainId: 75006][Trigger: Q7500613_HGTransTrigger] LightUpTriggerIn")
end

function Q7500613_HGTransTrigger:TriggerOut()
    print("[MainId: 75006][Trigger: Q7500613_HGTransTrigger] TriggerOut")
end

return Q7500613_HGTransTrigger
