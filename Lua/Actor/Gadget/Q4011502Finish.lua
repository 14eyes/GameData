require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011502Finish = class("Q4011502Finish", GadgetActorProxy)
Q4011502Finish.defaultAlias = "Q4011502Finish"
local Q40115ClientConfig = require("Quest/Client/Q40115ClientConfig")

local this
local subIDs = Q40115ClientConfig.SubIDs
local npcs = Q40115ClientConfig.Npcs
local points = Q40115ClientConfig.Points

function Q4011502Finish:OnPostDataPrepare()
    print("[MainId: 40115][Trigger: Q4011502Finish] OnPostDataPrepare")
    this = self
end

function Q4011502Finish:OnPostComponentPrepare()
    print("[MainId: 40115][Trigger: Q4011502Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011502Finish:TriggerIn()
    print("[MainId: 40115][Trigger: Q4011502Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011502)
    this:DestroySelf()
end

function Q4011502Finish:PreTriggerIn()
    print("[MainId: 40115][Trigger: Q4011502Finish] PreTriggerIn")
end

function Q4011502Finish:LightUpTriggerIn()
    print("[MainId: 40115][Trigger: Q4011502Finish] LightUpTriggerIn")
end

function Q4011502Finish:TriggerOut()
    print("[MainId: 40115][Trigger: Q4011502Finish] TriggerOut")
end

return Q4011502Finish
