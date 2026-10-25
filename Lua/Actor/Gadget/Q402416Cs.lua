require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402416Cs = class("Q402416Cs", GadgetActorProxy)
Q402416Cs.defaultAlias = "Q402416Cs"
local Q4024ClientConfig = require("Quest/Client/Q4024ClientConfig")

local this
local subIDs = Q4024ClientConfig.SubIDs
local npcs = Q4024ClientConfig.Npcs
local points = Q4024ClientConfig.Points
local datas = Q4024ClientConfig.Datas

function Q402416Cs:OnPostDataPrepare()
    print("[MainId: 4024][Trigger: Q402416Cs] OnPostDataPrepare")
    this = self
end

function Q402416Cs:OnPostComponentPrepare()
    print("[MainId: 4024][Trigger: Q402416Cs] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402416Cs:TriggerIn()
    print("[MainId: 4024][Trigger: Q402416Cs] TriggerIn")
end

function Q402416Cs:PreTriggerIn()
    print("[MainId: 4024][Trigger: Q402416Cs] PreTriggerIn")
end

function Q402416Cs:LightUpTriggerIn()
    print("[MainId: 4024][Trigger: Q402416Cs] LightUpTriggerIn")
    actorMgr:GetActor("4024"):ShowBlackScreen(0, 0.5, 0.5, function(arg1)
        actorMgr:GetActor("4024"):PlayCutsceneIndex(40241601, function(arg1)
            local actor = actorMgr:GetActor("4024")
            actorUtils.FinishQuestID(false, 402416)
            this:DestroySelf()
        end, nil, nil, false)
    end, nil, nil, "", false, true)
end

function Q402416Cs:TriggerOut()
    print("[MainId: 4024][Trigger: Q402416Cs] TriggerOut")
end

return Q402416Cs
