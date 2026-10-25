require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011520Finish = class("Q4011520Finish", GadgetActorProxy)
Q4011520Finish.defaultAlias = "Q4011520Finish"
local Q40115ClientConfig = require("Quest/Client/Q40115ClientConfig")

local this
local subIDs = Q40115ClientConfig.SubIDs
local npcs = Q40115ClientConfig.Npcs
local points = Q40115ClientConfig.Points

function Q4011520Finish:OnPostDataPrepare()
    print("[MainId: 40115][Trigger: Q4011520Finish] OnPostDataPrepare")
    this = self
end

function Q4011520Finish:OnPostComponentPrepare()
    print("[MainId: 40115][Trigger: Q4011520Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011520Finish:TriggerIn()
    print("[MainId: 40115][Trigger: Q4011520Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011520)
    this:DestroySelf()
end

function Q4011520Finish:PreTriggerIn()
    print("[MainId: 40115][Trigger: Q4011520Finish] PreTriggerIn")
end

function Q4011520Finish:LightUpTriggerIn()
    print("[MainId: 40115][Trigger: Q4011520Finish] LightUpTriggerIn")
end

function Q4011520Finish:TriggerOut()
    print("[MainId: 40115][Trigger: Q4011520Finish] TriggerOut")
end

return Q4011520Finish
