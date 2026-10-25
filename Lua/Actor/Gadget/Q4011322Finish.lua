require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011322Finish = class("Q4011322Finish", GadgetActorProxy)
Q4011322Finish.defaultAlias = "Q4011322Finish"
local Q40113ClientConfig = require("Quest/Client/Q40113ClientConfig")

local this
local subIDs = Q40113ClientConfig.SubIDs
local npcs = Q40113ClientConfig.Npcs
local points = Q40113ClientConfig.Points
local datas = Q40113ClientConfig.Datas

function Q4011322Finish:OnPostDataPrepare()
    print("[MainId: 40113][Trigger: Q4011322Finish] OnPostDataPrepare")
    this = self
end

function Q4011322Finish:OnPostComponentPrepare()
    print("[MainId: 40113][Trigger: Q4011322Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011322Finish:TriggerIn()
    print("[MainId: 40113][Trigger: Q4011322Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011322)
    this:DestroySelf()
end

function Q4011322Finish:PreTriggerIn()
    print("[MainId: 40113][Trigger: Q4011322Finish] PreTriggerIn")
end

function Q4011322Finish:LightUpTriggerIn()
    print("[MainId: 40113][Trigger: Q4011322Finish] LightUpTriggerIn")
end

function Q4011322Finish:TriggerOut()
    print("[MainId: 40113][Trigger: Q4011322Finish] TriggerOut")
end

return Q4011322Finish
