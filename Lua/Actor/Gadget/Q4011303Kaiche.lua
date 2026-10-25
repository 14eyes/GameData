require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011303Kaiche = class("Q4011303Kaiche", GadgetActorProxy)
Q4011303Kaiche.defaultAlias = "Q4011303Kaiche"
local Q40113ClientConfig = require("Quest/Client/Q40113ClientConfig")

local this
local subIDs = Q40113ClientConfig.SubIDs
local npcs = Q40113ClientConfig.Npcs
local points = Q40113ClientConfig.Points
local datas = Q40113ClientConfig.Datas

function Q4011303Kaiche:OnPostDataPrepare()
    print("[MainId: 40113][Trigger: Q4011303Kaiche] OnPostDataPrepare")
    this = self
end

function Q4011303Kaiche:OnPostComponentPrepare()
    print("[MainId: 40113][Trigger: Q4011303Kaiche] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011303Kaiche:TriggerIn()
    print("[MainId: 40113][Trigger: Q4011303Kaiche] TriggerIn")
    actorUtils.FinishQuestID(false, 4011319)
    this:DestroySelf()
end

function Q4011303Kaiche:PreTriggerIn()
    print("[MainId: 40113][Trigger: Q4011303Kaiche] PreTriggerIn")
end

function Q4011303Kaiche:LightUpTriggerIn()
    print("[MainId: 40113][Trigger: Q4011303Kaiche] LightUpTriggerIn")
end

function Q4011303Kaiche:TriggerOut()
    print("[MainId: 40113][Trigger: Q4011303Kaiche] TriggerOut")
end

return Q4011303Kaiche
