require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011301Finish = class("Q4011301Finish", GadgetActorProxy)
Q4011301Finish.defaultAlias = "Q4011301Finish"
local Q40113ClientConfig = require("Quest/Client/Q40113ClientConfig")

local this
local subIDs = Q40113ClientConfig.SubIDs
local npcs = Q40113ClientConfig.Npcs
local points = Q40113ClientConfig.Points
local datas = Q40113ClientConfig.Datas

function Q4011301Finish:OnPostDataPrepare()
    print("[MainId: 40113][Trigger: Q4011301Finish] OnPostDataPrepare")
    this = self
end

function Q4011301Finish:OnPostComponentPrepare()
    print("[MainId: 40113][Trigger: Q4011301Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011301Finish:TriggerIn()
    print("[MainId: 40113][Trigger: Q4011301Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011301)
    this:DestroySelf()
end

function Q4011301Finish:PreTriggerIn()
    print("[MainId: 40113][Trigger: Q4011301Finish] PreTriggerIn")
end

function Q4011301Finish:LightUpTriggerIn()
    print("[MainId: 40113][Trigger: Q4011301Finish] LightUpTriggerIn")
end

function Q4011301Finish:TriggerOut()
    print("[MainId: 40113][Trigger: Q4011301Finish] TriggerOut")
end

return Q4011301Finish
