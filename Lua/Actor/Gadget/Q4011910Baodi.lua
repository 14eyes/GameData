require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011910Baodi = class("Q4011910Baodi", GadgetActorProxy)
Q4011910Baodi.defaultAlias = "Q4011910Baodi"
local Q40119ClientConfig = require("Quest/Client/Q40119ClientConfig")

local this
local subIDs = Q40119ClientConfig.SubIDs
local npcs = Q40119ClientConfig.Npcs
local points = Q40119ClientConfig.Points
local datas = Q40119ClientConfig.Datas

function Q4011910Baodi:OnPostDataPrepare()
    print("[MainId: 40119][Trigger: Q4011910Baodi] OnPostDataPrepare")
    this = self
end

function Q4011910Baodi:OnPostComponentPrepare()
    print("[MainId: 40119][Trigger: Q4011910Baodi] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011910Baodi:TriggerIn()
    print("[MainId: 40119][Trigger: Q4011910Baodi] TriggerIn")
    actorUtils.FinishQuestID(false, 4011910)
    this:DestroySelf()
end

function Q4011910Baodi:PreTriggerIn()
    print("[MainId: 40119][Trigger: Q4011910Baodi] PreTriggerIn")
end

function Q4011910Baodi:LightUpTriggerIn()
    print("[MainId: 40119][Trigger: Q4011910Baodi] LightUpTriggerIn")
end

function Q4011910Baodi:TriggerOut()
    print("[MainId: 40119][Trigger: Q4011910Baodi] TriggerOut")
end

return Q4011910Baodi
