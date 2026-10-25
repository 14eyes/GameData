require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011506Finish = class("Q4011506Finish", GadgetActorProxy)
Q4011506Finish.defaultAlias = "Q4011506Finish"
local Q40115ClientConfig = require("Quest/Client/Q40115ClientConfig")

local this
local subIDs = Q40115ClientConfig.SubIDs
local npcs = Q40115ClientConfig.Npcs
local points = Q40115ClientConfig.Points

function Q4011506Finish:OnPostDataPrepare()
    print("[MainId: 40115][Trigger: Q4011506Finish] OnPostDataPrepare")
    this = self
end

function Q4011506Finish:OnPostComponentPrepare()
    print("[MainId: 40115][Trigger: Q4011506Finish] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 20, 25, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011506Finish:TriggerIn()
    print("[MainId: 40115][Trigger: Q4011506Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011506)
    this:DestroySelf()
end

function Q4011506Finish:PreTriggerIn()
    print("[MainId: 40115][Trigger: Q4011506Finish] PreTriggerIn")
end

function Q4011506Finish:LightUpTriggerIn()
    print("[MainId: 40115][Trigger: Q4011506Finish] LightUpTriggerIn")
end

function Q4011506Finish:TriggerOut()
    print("[MainId: 40115][Trigger: Q4011506Finish] TriggerOut")
end

return Q4011506Finish
