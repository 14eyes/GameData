require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011303Finish = class("Q4011303Finish", GadgetActorProxy)
Q4011303Finish.defaultAlias = "Q4011303Finish"
local Q40113ClientConfig = require("Quest/Client/Q40113ClientConfig")

local this
local subIDs = Q40113ClientConfig.SubIDs
local npcs = Q40113ClientConfig.Npcs
local points = Q40113ClientConfig.Points
local datas = Q40113ClientConfig.Datas

function Q4011303Finish:OnPostDataPrepare()
    print("[MainId: 40113][Trigger: Q4011303Finish] OnPostDataPrepare")
    this = self
end

function Q4011303Finish:OnPostComponentPrepare()
    print("[MainId: 40113][Trigger: Q4011303Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011303Finish:TriggerIn()
    print("[MainId: 40113][Trigger: Q4011303Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011303)
    this:DestroySelf()
end

function Q4011303Finish:PreTriggerIn()
    print("[MainId: 40113][Trigger: Q4011303Finish] PreTriggerIn")
end

function Q4011303Finish:LightUpTriggerIn()
    print("[MainId: 40113][Trigger: Q4011303Finish] LightUpTriggerIn")
end

function Q4011303Finish:TriggerOut()
    print("[MainId: 40113][Trigger: Q4011303Finish] TriggerOut")
end

return Q4011303Finish
