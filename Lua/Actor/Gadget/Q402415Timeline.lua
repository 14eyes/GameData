require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402415Timeline = class("Q402415Timeline", GadgetActorProxy)
Q402415Timeline.defaultAlias = "Q402415Timeline"
local Q4024ClientConfig = require("Quest/Client/Q4024ClientConfig")

local this
local subIDs = Q4024ClientConfig.SubIDs
local npcs = Q4024ClientConfig.Npcs
local points = Q4024ClientConfig.Points
local datas = Q4024ClientConfig.Datas

function Q402415Timeline:OnPostDataPrepare()
    print("[MainId: 4024][Trigger: Q402415Timeline] OnPostDataPrepare")
    this = self
end

function Q402415Timeline:OnPostComponentPrepare()
    print("[MainId: 4024][Trigger: Q402415Timeline] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402415Timeline:TriggerIn()
    print("[MainId: 4024][Trigger: Q402415Timeline] TriggerIn")
end

function Q402415Timeline:PreTriggerIn()
    print("[MainId: 4024][Trigger: Q402415Timeline] PreTriggerIn")
end

function Q402415Timeline:LightUpTriggerIn()
    print("[MainId: 4024][Trigger: Q402415Timeline] LightUpTriggerIn")
    actorMgr:GetActor("4024"):ShowBlackScreen(0, 0.5, 0, function(arg1)
        actorMgr:GetActor("4024"):PlayCutsceneIndex(40241501, function(arg1)
            actorMgr:GetActor("4024"):NarratorOnlyTaskByData(datas.NarratorWithId)
            this:DestroySelf()
        end, nil, nil, false)
    end, nil, nil, "", false, true)
end

function Q402415Timeline:TriggerOut()
    print("[MainId: 4024][Trigger: Q402415Timeline] TriggerOut")
end

return Q402415Timeline
