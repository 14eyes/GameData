require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75006_NPC2 = class("Q75006_NPC2", GadgetActorProxy)
Q75006_NPC2.defaultAlias = "Q75006_NPC2"
local Q75006ClientConfig = require("Quest/Client/Q75006ClientConfig")

local this
local subIDs = Q75006ClientConfig.SubIDs
local npcs = Q75006ClientConfig.Npcs
local datas = Q75006ClientConfig.Datas

function Q75006_NPC2:OnPostDataPrepare()
    print("[MainId: 75006][Trigger: Q75006_NPC2] OnPostDataPrepare")
    this = self
end

function Q75006_NPC2:OnPostComponentPrepare()
    print("[MainId: 75006][Trigger: Q75006_NPC2] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75006)
end

function Q75006_NPC2:TriggerIn()
    print("[MainId: 75006][Trigger: Q75006_NPC2] TriggerIn")
    this:DestroySelf()
end

function Q75006_NPC2:PreTriggerIn()
    print("[MainId: 75006][Trigger: Q75006_NPC2] PreTriggerIn")
end

function Q75006_NPC2:LightUpTriggerIn()
    print("[MainId: 75006][Trigger: Q75006_NPC2] LightUpTriggerIn")
end

function Q75006_NPC2:TriggerOut()
    print("[MainId: 75006][Trigger: Q75006_NPC2] TriggerOut")
end

return Q75006_NPC2
