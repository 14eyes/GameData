require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506401Trigger03 = class("Q7506401Trigger03", GadgetActorProxy)
Q7506401Trigger03.defaultAlias = "Q7506401Trigger03"
local Q75064ClientConfig = require("Quest/Client/Q75064ClientConfig")

local this
local subIDs = Q75064ClientConfig.SubIDs
local npcs = Q75064ClientConfig.Npcs
local datas = Q75064ClientConfig.Datas

function Q7506401Trigger03:OnPostDataPrepare()
    print("[MainId: 75064][Trigger: Q7506401Trigger03] OnPostDataPrepare")
    this = self
end

function Q7506401Trigger03:OnPostComponentPrepare()
    print("[MainId: 75064][Trigger: Q7506401Trigger03] OnPostComponentPrepare")
    this:AddComponentTrigger(14, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75064)
end

function Q7506401Trigger03:TriggerIn()
    print("[MainId: 75064][Trigger: Q7506401Trigger03] TriggerIn")
    actorMgr:GetActor("75064"):RequestInteraction(npcs.Npc21586Data.alias, "", true)
    this:DestroySelf()
end

function Q7506401Trigger03:PreTriggerIn()
    print("[MainId: 75064][Trigger: Q7506401Trigger03] PreTriggerIn")
end

function Q7506401Trigger03:LightUpTriggerIn()
    print("[MainId: 75064][Trigger: Q7506401Trigger03] LightUpTriggerIn")
end

function Q7506401Trigger03:TriggerOut()
    print("[MainId: 75064][Trigger: Q7506401Trigger03] TriggerOut")
end

return Q7506401Trigger03
