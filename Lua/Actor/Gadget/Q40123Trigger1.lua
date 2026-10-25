require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40123Trigger1 = class("Q40123Trigger1", GadgetActorProxy)
Q40123Trigger1.defaultAlias = "Q40123Trigger1"
local Q40123ClientConfig = require("Quest/Client/Q40123ClientConfig")

local this
local subIDs = Q40123ClientConfig.SubIDs
local npcs = Q40123ClientConfig.Npcs
local points = Q40123ClientConfig.Points
local datas = Q40123ClientConfig.Datas

function Q40123Trigger1:OnPostDataPrepare()
    print("[MainId: 40123][Trigger: Q40123Trigger1] OnPostDataPrepare")
    this = self
end

function Q40123Trigger1:OnPostComponentPrepare()
    print("[MainId: 40123][Trigger: Q40123Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40123Trigger1:TriggerIn()
    print("[MainId: 40123][Trigger: Q40123Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 4012309)
    this:DestroySelf()
end

function Q40123Trigger1:PreTriggerIn()
    print("[MainId: 40123][Trigger: Q40123Trigger1] PreTriggerIn")
end

function Q40123Trigger1:LightUpTriggerIn()
    print("[MainId: 40123][Trigger: Q40123Trigger1] LightUpTriggerIn")
end

function Q40123Trigger1:TriggerOut()
    print("[MainId: 40123][Trigger: Q40123Trigger1] TriggerOut")
end

return Q40123Trigger1
