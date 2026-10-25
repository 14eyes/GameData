require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40123Trigger2 = class("Q40123Trigger2", GadgetActorProxy)
Q40123Trigger2.defaultAlias = "Q40123Trigger2"
local Q40123ClientConfig = require("Quest/Client/Q40123ClientConfig")

local this
local subIDs = Q40123ClientConfig.SubIDs
local npcs = Q40123ClientConfig.Npcs
local points = Q40123ClientConfig.Points
local datas = Q40123ClientConfig.Datas

function Q40123Trigger2:OnPostDataPrepare()
    print("[MainId: 40123][Trigger: Q40123Trigger2] OnPostDataPrepare")
    this = self
end

function Q40123Trigger2:OnPostComponentPrepare()
    print("[MainId: 40123][Trigger: Q40123Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(16, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40123Trigger2:TriggerIn()
    print("[MainId: 40123][Trigger: Q40123Trigger2] TriggerIn")
    actorMgr:GetActor("40123"):RequestInteraction(npcs.WendyData.alias)
    this:DestroySelf()
end

function Q40123Trigger2:PreTriggerIn()
    print("[MainId: 40123][Trigger: Q40123Trigger2] PreTriggerIn")
end

function Q40123Trigger2:LightUpTriggerIn()
    print("[MainId: 40123][Trigger: Q40123Trigger2] LightUpTriggerIn")
end

function Q40123Trigger2:TriggerOut()
    print("[MainId: 40123][Trigger: Q40123Trigger2] TriggerOut")
end

return Q40123Trigger2
