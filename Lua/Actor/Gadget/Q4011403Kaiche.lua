require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011403Kaiche = class("Q4011403Kaiche", GadgetActorProxy)
Q4011403Kaiche.defaultAlias = "Q4011403Kaiche"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011403Kaiche:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011403Kaiche] OnPostDataPrepare")
    this = self
end

function Q4011403Kaiche:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011403Kaiche] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011403Kaiche:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011403Kaiche] TriggerIn")
    if actorUtils.IsInRollerCoaster() then
        actorMgr:GetActor("40114"):NarratorOnlyTaskByData(datas.Q4011403Kaiche, nil, 4011403)
        this:DestroySelf()
    end
end

function Q4011403Kaiche:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011403Kaiche] PreTriggerIn")
end

function Q4011403Kaiche:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011403Kaiche] LightUpTriggerIn")
end

function Q4011403Kaiche:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011403Kaiche] TriggerOut")
end

return Q4011403Kaiche
