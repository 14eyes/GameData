require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011607Finish = class("Q4011607Finish", GadgetActorProxy)
Q4011607Finish.defaultAlias = "Q4011607Finish"
local Q40116ClientConfig = require("Quest/Client/Q40116ClientConfig")

local this
local subIDs = Q40116ClientConfig.SubIDs
local npcs = Q40116ClientConfig.Npcs
local points = Q40116ClientConfig.Points
local datas = Q40116ClientConfig.Datas

function Q4011607Finish:OnPostDataPrepare()
    print("[MainId: 40116][Trigger: Q4011607Finish] OnPostDataPrepare")
    this = self
end

function Q4011607Finish:OnPostComponentPrepare()
    print("[MainId: 40116][Trigger: Q4011607Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011607Finish:TriggerIn()
    print("[MainId: 40116][Trigger: Q4011607Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011607)
    actorUtils.FinishQuestID(true, 4011614)
    this:DestroySelf()
end

function Q4011607Finish:PreTriggerIn()
    print("[MainId: 40116][Trigger: Q4011607Finish] PreTriggerIn")
end

function Q4011607Finish:LightUpTriggerIn()
    print("[MainId: 40116][Trigger: Q4011607Finish] LightUpTriggerIn")
end

function Q4011607Finish:TriggerOut()
    print("[MainId: 40116][Trigger: Q4011607Finish] TriggerOut")
end

return Q4011607Finish
