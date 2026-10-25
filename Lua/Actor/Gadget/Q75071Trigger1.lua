require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75071Trigger1 = class("Q75071Trigger1", GadgetActorProxy)
Q75071Trigger1.defaultAlias = "Q75071Trigger1"
local Q75071ClientConfig = require("Quest/Client/Q75071ClientConfig")

local this
local subIDs = Q75071ClientConfig.SubIDs
local npcs = Q75071ClientConfig.Npcs
local datas = Q75071ClientConfig.Datas

function Q75071Trigger1:OnPostDataPrepare()
    print("[MainId: 75071][Trigger: Q75071Trigger1] OnPostDataPrepare")
    this = self
end

function Q75071Trigger1:OnPostComponentPrepare()
    print("[MainId: 75071][Trigger: Q75071Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(16, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75071)
end

function Q75071Trigger1:TriggerIn()
    print("[MainId: 75071][Trigger: Q75071Trigger1] TriggerIn")
    actorMgr:GetActor("75071"):RequestInteraction(npcs.Npc21586Data.alias, "", true)
end

function Q75071Trigger1:PreTriggerIn()
    print("[MainId: 75071][Trigger: Q75071Trigger1] PreTriggerIn")
end

function Q75071Trigger1:LightUpTriggerIn()
    print("[MainId: 75071][Trigger: Q75071Trigger1] LightUpTriggerIn")
end

function Q75071Trigger1:TriggerOut()
    print("[MainId: 75071][Trigger: Q75071Trigger1] TriggerOut")
end

return Q75071Trigger1
