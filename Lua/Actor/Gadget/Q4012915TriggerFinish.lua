require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4012915TriggerFinish = class("Q4012915TriggerFinish", GadgetActorProxy)
Q4012915TriggerFinish.defaultAlias = "Q4012915TriggerFinish"
local Q40129ClientConfig = require("Quest/Client/Q40129ClientConfig")

local this
local subIDs = Q40129ClientConfig.SubIDs
local npcs = Q40129ClientConfig.Npcs
local points = Q40129ClientConfig.Points
local datas = Q40129ClientConfig.Datas

function Q4012915TriggerFinish:OnPostDataPrepare()
    print("[MainId: 40129][Trigger: Q4012915TriggerFinish] OnPostDataPrepare")
    this = self
end

function Q4012915TriggerFinish:OnPostComponentPrepare()
    print("[MainId: 40129][Trigger: Q4012915TriggerFinish] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(25, 25, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4012915TriggerFinish:TriggerIn()
    print("[MainId: 40129][Trigger: Q4012915TriggerFinish] TriggerIn")
    local actor = actorMgr:GetActor("40129")
    actor:NarratorOnlyTaskByDataWithPriority(datas.NarratorWithId4012903, 40129, 2)
    actor:EnterSceneLookCamera({x = 3226.688, y = 421.052, z = 3894.172}, 0, 3, false, true)
    actorUtils.FinishQuestID(false, 4012915)
    this:DestroySelf()
end

function Q4012915TriggerFinish:PreTriggerIn()
    print("[MainId: 40129][Trigger: Q4012915TriggerFinish] PreTriggerIn")
end

function Q4012915TriggerFinish:LightUpTriggerIn()
    print("[MainId: 40129][Trigger: Q4012915TriggerFinish] LightUpTriggerIn")
end

function Q4012915TriggerFinish:TriggerOut()
    print("[MainId: 40129][Trigger: Q4012915TriggerFinish] TriggerOut")
end

return Q4012915TriggerFinish
