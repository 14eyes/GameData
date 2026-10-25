require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40123Trigger4 = class("Q40123Trigger4", GadgetActorProxy)
Q40123Trigger4.defaultAlias = "Q40123Trigger4"
local Q40123ClientConfig = require("Quest/Client/Q40123ClientConfig")

local this
local subIDs = Q40123ClientConfig.SubIDs
local npcs = Q40123ClientConfig.Npcs
local points = Q40123ClientConfig.Points
local datas = Q40123ClientConfig.Datas

function Q40123Trigger4:OnPostDataPrepare()
    print("[MainId: 40123][Trigger: Q40123Trigger4] OnPostDataPrepare")
    this = self
end

function Q40123Trigger4:OnPostComponentPrepare()
    print("[MainId: 40123][Trigger: Q40123Trigger4] OnPostComponentPrepare")
    this:AddComponentTrigger(88, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40123Trigger4:TriggerIn()
    print("[MainId: 40123][Trigger: Q40123Trigger4] TriggerIn")
end

function Q40123Trigger4:PreTriggerIn()
    print("[MainId: 40123][Trigger: Q40123Trigger4] PreTriggerIn")
end

function Q40123Trigger4:LightUpTriggerIn()
    print("[MainId: 40123][Trigger: Q40123Trigger4] LightUpTriggerIn")
end

function Q40123Trigger4:TriggerOut()
    print("[MainId: 40123][Trigger: Q40123Trigger4] TriggerOut")
    actorMgr:GetActor("40123"):SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    this:DestroySelf()
end

return Q40123Trigger4
