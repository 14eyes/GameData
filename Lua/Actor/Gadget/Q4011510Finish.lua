require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011510Finish = class("Q4011510Finish", GadgetActorProxy)
Q4011510Finish.defaultAlias = "Q4011510Finish"
local Q40115ClientConfig = require("Quest/Client/Q40115ClientConfig")

local this
local subIDs = Q40115ClientConfig.SubIDs
local npcs = Q40115ClientConfig.Npcs
local points = Q40115ClientConfig.Points

function Q4011510Finish:OnPostDataPrepare()
    print("[MainId: 40115][Trigger: Q4011510Finish] OnPostDataPrepare")
    this = self
end

function Q4011510Finish:OnPostComponentPrepare()
    print("[MainId: 40115][Trigger: Q4011510Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011510Finish:TriggerIn()
    print("[MainId: 40115][Trigger: Q4011510Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011508)
    this:DestroySelf()
end

function Q4011510Finish:PreTriggerIn()
    print("[MainId: 40115][Trigger: Q4011510Finish] PreTriggerIn")
end

function Q4011510Finish:LightUpTriggerIn()
    print("[MainId: 40115][Trigger: Q4011510Finish] LightUpTriggerIn")
end

function Q4011510Finish:TriggerOut()
    print("[MainId: 40115][Trigger: Q4011510Finish] TriggerOut")
end

return Q4011510Finish
