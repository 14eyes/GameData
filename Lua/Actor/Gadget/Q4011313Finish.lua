require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011313Finish = class("Q4011313Finish", GadgetActorProxy)
Q4011313Finish.defaultAlias = "Q4011313Finish"
local Q40113ClientConfig = require("Quest/Client/Q40113ClientConfig")

local this
local subIDs = Q40113ClientConfig.SubIDs
local npcs = Q40113ClientConfig.Npcs
local points = Q40113ClientConfig.Points
local datas = Q40113ClientConfig.Datas

function Q4011313Finish:OnPostDataPrepare()
    print("[MainId: 40113][Trigger: Q4011313Finish] OnPostDataPrepare")
    this = self
end

function Q4011313Finish:OnPostComponentPrepare()
    print("[MainId: 40113][Trigger: Q4011313Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011313Finish:TriggerIn()
    print("[MainId: 40113][Trigger: Q4011313Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011313)
    this:DestroySelf()
end

function Q4011313Finish:PreTriggerIn()
    print("[MainId: 40113][Trigger: Q4011313Finish] PreTriggerIn")
end

function Q4011313Finish:LightUpTriggerIn()
    print("[MainId: 40113][Trigger: Q4011313Finish] LightUpTriggerIn")
end

function Q4011313Finish:TriggerOut()
    print("[MainId: 40113][Trigger: Q4011313Finish] TriggerOut")
end

return Q4011313Finish
