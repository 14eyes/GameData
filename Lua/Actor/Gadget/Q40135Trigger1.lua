require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40135Trigger1 = class("Q40135Trigger1", GadgetActorProxy)
Q40135Trigger1.defaultAlias = "Q40135Trigger1"
local Q40135ClientConfig = require("Quest/Client/Q40135ClientConfig")

local this
local subIDs = Q40135ClientConfig.SubIDs
local npcs = Q40135ClientConfig.Npcs
local points = Q40135ClientConfig.Points
local datas = Q40135ClientConfig.Datas

function Q40135Trigger1:OnPostDataPrepare()
    print("[MainId: 40135][Trigger: Q40135Trigger1] OnPostDataPrepare")
    this = self
end

function Q40135Trigger1:OnPostComponentPrepare()
    print("[MainId: 40135][Trigger: Q40135Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40135Trigger1:TriggerIn()
    print("[MainId: 40135][Trigger: Q40135Trigger1] TriggerIn")
    actorMgr:GetActor("40135"):RequestInteraction(npcs.Npc1081Data.alias, "", true)
    this:DestroySelf()
end

function Q40135Trigger1:PreTriggerIn()
    print("[MainId: 40135][Trigger: Q40135Trigger1] PreTriggerIn")
end

function Q40135Trigger1:LightUpTriggerIn()
    print("[MainId: 40135][Trigger: Q40135Trigger1] LightUpTriggerIn")
end

function Q40135Trigger1:TriggerOut()
    print("[MainId: 40135][Trigger: Q40135Trigger1] TriggerOut")
end

return Q40135Trigger1
