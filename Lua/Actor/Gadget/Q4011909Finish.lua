require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011909Finish = class("Q4011909Finish", GadgetActorProxy)
Q4011909Finish.defaultAlias = "Q4011909Finish"
local Q40119ClientConfig = require("Quest/Client/Q40119ClientConfig")

local this
local subIDs = Q40119ClientConfig.SubIDs
local npcs = Q40119ClientConfig.Npcs
local points = Q40119ClientConfig.Points
local datas = Q40119ClientConfig.Datas

function Q4011909Finish:OnPostDataPrepare()
    print("[MainId: 40119][Trigger: Q4011909Finish] OnPostDataPrepare")
    this = self
end

function Q4011909Finish:OnPostComponentPrepare()
    print("[MainId: 40119][Trigger: Q4011909Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011909Finish:TriggerIn()
    print("[MainId: 40119][Trigger: Q4011909Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011909)
    this:DestroySelf()
end

function Q4011909Finish:PreTriggerIn()
    print("[MainId: 40119][Trigger: Q4011909Finish] PreTriggerIn")
end

function Q4011909Finish:LightUpTriggerIn()
    print("[MainId: 40119][Trigger: Q4011909Finish] LightUpTriggerIn")
end

function Q4011909Finish:TriggerOut()
    print("[MainId: 40119][Trigger: Q4011909Finish] TriggerOut")
end

return Q4011909Finish
