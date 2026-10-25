require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011901Finish = class("Q4011901Finish", GadgetActorProxy)
Q4011901Finish.defaultAlias = "Q4011901Finish"
local Q40119ClientConfig = require("Quest/Client/Q40119ClientConfig")

local this
local subIDs = Q40119ClientConfig.SubIDs
local npcs = Q40119ClientConfig.Npcs
local points = Q40119ClientConfig.Points
local datas = Q40119ClientConfig.Datas

function Q4011901Finish:OnPostDataPrepare()
    print("[MainId: 40119][Trigger: Q4011901Finish] OnPostDataPrepare")
    this = self
end

function Q4011901Finish:OnPostComponentPrepare()
    print("[MainId: 40119][Trigger: Q4011901Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011901Finish:TriggerIn()
    print("[MainId: 40119][Trigger: Q4011901Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011901)
    this:DestroySelf()
end

function Q4011901Finish:PreTriggerIn()
    print("[MainId: 40119][Trigger: Q4011901Finish] PreTriggerIn")
end

function Q4011901Finish:LightUpTriggerIn()
    print("[MainId: 40119][Trigger: Q4011901Finish] LightUpTriggerIn")
end

function Q4011901Finish:TriggerOut()
    print("[MainId: 40119][Trigger: Q4011901Finish] TriggerOut")
end

return Q4011901Finish
