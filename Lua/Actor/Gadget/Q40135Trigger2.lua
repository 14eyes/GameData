require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40135Trigger2 = class("Q40135Trigger2", GadgetActorProxy)
Q40135Trigger2.defaultAlias = "Q40135Trigger2"
local Q40135ClientConfig = require("Quest/Client/Q40135ClientConfig")

local this
local subIDs = Q40135ClientConfig.SubIDs
local npcs = Q40135ClientConfig.Npcs
local points = Q40135ClientConfig.Points
local datas = Q40135ClientConfig.Datas

function Q40135Trigger2:OnPostDataPrepare()
    print("[MainId: 40135][Trigger: Q40135Trigger2] OnPostDataPrepare")
    this = self
end

function Q40135Trigger2:OnPostComponentPrepare()
    print("[MainId: 40135][Trigger: Q40135Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q40135Trigger2:TriggerIn()
    print("[MainId: 40135][Trigger: Q40135Trigger2] TriggerIn")
    actorUtils.FinishQuestID(false, 4013516)
    this:DestroySelf()
end

function Q40135Trigger2:PreTriggerIn()
    print("[MainId: 40135][Trigger: Q40135Trigger2] PreTriggerIn")
end

function Q40135Trigger2:LightUpTriggerIn()
    print("[MainId: 40135][Trigger: Q40135Trigger2] LightUpTriggerIn")
end

function Q40135Trigger2:TriggerOut()
    print("[MainId: 40135][Trigger: Q40135Trigger2] TriggerOut")
end

return Q40135Trigger2
