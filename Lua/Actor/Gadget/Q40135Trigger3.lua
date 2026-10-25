require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40135Trigger3 = class("Q40135Trigger3", GadgetActorProxy)
Q40135Trigger3.defaultAlias = "Q40135Trigger3"
local Q40135ClientConfig = require("Quest/Client/Q40135ClientConfig")

local this
local subIDs = Q40135ClientConfig.SubIDs
local npcs = Q40135ClientConfig.Npcs
local points = Q40135ClientConfig.Points
local datas = Q40135ClientConfig.Datas

function Q40135Trigger3:OnPostDataPrepare()
    print("[MainId: 40135][Trigger: Q40135Trigger3] OnPostDataPrepare")
    this = self
end

function Q40135Trigger3:OnPostComponentPrepare()
    print("[MainId: 40135][Trigger: Q40135Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q40135Trigger3:TriggerIn()
    print("[MainId: 40135][Trigger: Q40135Trigger3] TriggerIn")
    actorUtils.FinishQuestID(false, 4013518)
    this:DestroySelf()
end

function Q40135Trigger3:PreTriggerIn()
    print("[MainId: 40135][Trigger: Q40135Trigger3] PreTriggerIn")
end

function Q40135Trigger3:LightUpTriggerIn()
    print("[MainId: 40135][Trigger: Q40135Trigger3] LightUpTriggerIn")
end

function Q40135Trigger3:TriggerOut()
    print("[MainId: 40135][Trigger: Q40135Trigger3] TriggerOut")
end

return Q40135Trigger3
