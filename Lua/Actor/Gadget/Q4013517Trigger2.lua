require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013517Trigger2 = class("Q4013517Trigger2", GadgetActorProxy)
Q4013517Trigger2.defaultAlias = "Q4013517Trigger2"
local Q40135ClientConfig = require("Quest/Client/Q40135ClientConfig")

local this
local subIDs = Q40135ClientConfig.SubIDs
local npcs = Q40135ClientConfig.Npcs
local points = Q40135ClientConfig.Points
local datas = Q40135ClientConfig.Datas

function Q4013517Trigger2:OnPostDataPrepare()
    print("[MainId: 40135][Trigger: Q4013517Trigger2] OnPostDataPrepare")
    this = self
end

function Q4013517Trigger2:OnPostComponentPrepare()
    print("[MainId: 40135][Trigger: Q4013517Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(27, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q4013517Trigger2:TriggerIn()
    print("[MainId: 40135][Trigger: Q4013517Trigger2] TriggerIn")
    actorUtils.FinishQuestID(false, 4013517)
    this:DestroySelf()
end

function Q4013517Trigger2:PreTriggerIn()
    print("[MainId: 40135][Trigger: Q4013517Trigger2] PreTriggerIn")
end

function Q4013517Trigger2:LightUpTriggerIn()
    print("[MainId: 40135][Trigger: Q4013517Trigger2] LightUpTriggerIn")
end

function Q4013517Trigger2:TriggerOut()
    print("[MainId: 40135][Trigger: Q4013517Trigger2] TriggerOut")
end

return Q4013517Trigger2
