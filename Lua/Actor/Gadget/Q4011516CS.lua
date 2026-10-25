require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011516CS = class("Q4011516CS", GadgetActorProxy)
Q4011516CS.defaultAlias = "Q4011516CS"
local Q40115ClientConfig = require("Quest/Client/Q40115ClientConfig")

local this
local subIDs = Q40115ClientConfig.SubIDs
local npcs = Q40115ClientConfig.Npcs
local points = Q40115ClientConfig.Points

function Q4011516CS:OnPostDataPrepare()
    print("[MainId: 40115][Trigger: Q4011516CS] OnPostDataPrepare")
    this = self
end

function Q4011516CS:OnPostComponentPrepare()
    print("[MainId: 40115][Trigger: Q4011516CS] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011516CS:TriggerIn()
    print("[MainId: 40115][Trigger: Q4011516CS] TriggerIn")
end

function Q4011516CS:PreTriggerIn()
    print("[MainId: 40115][Trigger: Q4011516CS] PreTriggerIn")
end

function Q4011516CS:LightUpTriggerIn()
    print("[MainId: 40115][Trigger: Q4011516CS] LightUpTriggerIn")
    actorMgr:GetActor("40115"):ShowBlackScreen(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("40115"):PlayCutsceneIndex(4011516, function(arg1)
            actorUtils.FinishQuestID(false, 4011516)
            this:DestroySelf()
        end, nil, nil, false)
    end, nil, nil, "", false, true)
end

function Q4011516CS:TriggerOut()
    print("[MainId: 40115][Trigger: Q4011516CS] TriggerOut")
end

return Q4011516CS
