require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918514Trigger = class("Q1918514Trigger", GadgetActorProxy)
Q1918514Trigger.defaultAlias = "Q1918514Trigger"
local Q19185ClientConfig = require("Quest/Client/Q19185ClientConfig")

local this
local subIDs = Q19185ClientConfig.SubIDs
local npcs = Q19185ClientConfig.Npcs
local points = Q19185ClientConfig.Points
local datas = Q19185ClientConfig.Datas

function Q1918514Trigger:OnPostDataPrepare()
    print("[MainId: 19185][Trigger: Q1918514Trigger] OnPostDataPrepare")
    this = self
end

function Q1918514Trigger:OnPostComponentPrepare()
    print("[MainId: 19185][Trigger: Q1918514Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(13, 25, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19185)
end

function Q1918514Trigger:TriggerIn()
    print("[MainId: 19185][Trigger: Q1918514Trigger] TriggerIn")
    local actor = actorMgr:GetActor("19185")
    actorUtils.ActiveQuestCheck(1011, true, function(arg1)
        local actor = actorMgr:GetActor("19185")
        actorUtils.FinishQuestID(true, 1918514)
        actorUtils.QuestCheckResult(1011)
        actor:EnterSceneLookCamera({x = 3977.697, y = 420.242, z = 4420.018}, 0, 2, true, false)
        actor:EnablePlayerInputByQuest(false)
        actor:CallDelayByQuest("1918514", 2, function(arg1)
            actorMgr:GetActor("19185"):EnablePlayerInputByQuest(true)
        end)
    end, function(arg1)
        local actor = actorMgr:GetActor("19185")
        actorUtils.QuestCheckResult(1011)
    end)

    this:DestroySelf()
end

function Q1918514Trigger:PreTriggerIn()
    print("[MainId: 19185][Trigger: Q1918514Trigger] PreTriggerIn")
end

function Q1918514Trigger:LightUpTriggerIn()
    print("[MainId: 19185][Trigger: Q1918514Trigger] LightUpTriggerIn")
end

function Q1918514Trigger:TriggerOut()
    print("[MainId: 19185][Trigger: Q1918514Trigger] TriggerOut")
end

return Q1918514Trigger
