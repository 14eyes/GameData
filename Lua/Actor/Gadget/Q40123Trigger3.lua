require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40123Trigger3 = class("Q40123Trigger3", GadgetActorProxy)
Q40123Trigger3.defaultAlias = "Q40123Trigger3"
local Q40123ClientConfig = require("Quest/Client/Q40123ClientConfig")

local this
local subIDs = Q40123ClientConfig.SubIDs
local npcs = Q40123ClientConfig.Npcs
local points = Q40123ClientConfig.Points
local datas = Q40123ClientConfig.Datas

function Q40123Trigger3:OnPostDataPrepare()
    print("[MainId: 40123][Trigger: Q40123Trigger3] OnPostDataPrepare")
    this = self
end

function Q40123Trigger3:OnPostComponentPrepare()
    print("[MainId: 40123][Trigger: Q40123Trigger3] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(6, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40123Trigger3:TriggerIn()
    print("[MainId: 40123][Trigger: Q40123Trigger3] TriggerIn")
    actorMgr:GetActor("40123"):RequestInteraction(npcs.WendyData.alias)
    this:DestroySelf()
end

function Q40123Trigger3:PreTriggerIn()
    print("[MainId: 40123][Trigger: Q40123Trigger3] PreTriggerIn")
end

function Q40123Trigger3:LightUpTriggerIn()
    print("[MainId: 40123][Trigger: Q40123Trigger3] LightUpTriggerIn")
end

function Q40123Trigger3:TriggerOut()
    print("[MainId: 40123][Trigger: Q40123Trigger3] TriggerOut")
end

return Q40123Trigger3
