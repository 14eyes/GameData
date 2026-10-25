require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011905CS = class("Q4011905CS", GadgetActorProxy)
Q4011905CS.defaultAlias = "Q4011905CS"
local Q40119ClientConfig = require("Quest/Client/Q40119ClientConfig")

local this
local subIDs = Q40119ClientConfig.SubIDs
local npcs = Q40119ClientConfig.Npcs
local points = Q40119ClientConfig.Points
local datas = Q40119ClientConfig.Datas

function Q4011905CS:OnPostDataPrepare()
    print("[MainId: 40119][Trigger: Q4011905CS] OnPostDataPrepare")
    this = self
end

function Q4011905CS:OnPostComponentPrepare()
    print("[MainId: 40119][Trigger: Q4011905CS] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011905CS:TriggerIn()
    print("[MainId: 40119][Trigger: Q4011905CS] TriggerIn")
end

function Q4011905CS:PreTriggerIn()
    print("[MainId: 40119][Trigger: Q4011905CS] PreTriggerIn")
    actorMgr:GetActor("40119"):ShowBlackScreen(0, 0.5, 0.5, function(arg1)
        actorMgr:GetActor("40119"):PlayCutsceneIndex(4011905, function(arg1)
            actorUtils.FinishQuestID(false, 4011905)
            this:DestroySelf()
        end, nil, nil, false)
    end, nil, nil, "", false, true)
end

function Q4011905CS:LightUpTriggerIn()
    print("[MainId: 40119][Trigger: Q4011905CS] LightUpTriggerIn")
end

function Q4011905CS:TriggerOut()
    print("[MainId: 40119][Trigger: Q4011905CS] TriggerOut")
end

return Q4011905CS
