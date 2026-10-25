require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400102_NarratorTrigger = class("Q400102_NarratorTrigger", GadgetActorProxy)
Q400102_NarratorTrigger.defaultAlias = "Q400102_NarratorTrigger"
local Q4001ClientConfig = require("Quest/Client/Q4001ClientConfig")

local this
local subIDs = Q4001ClientConfig.SubIDs
local npcs = Q4001ClientConfig.Npcs
local points = Q4001ClientConfig.Points
local datas = Q4001ClientConfig.Datas

function Q400102_NarratorTrigger:OnPostDataPrepare()
    print("[MainId: 4001][Trigger: Q400102_NarratorTrigger] OnPostDataPrepare")
    this = self
end

function Q400102_NarratorTrigger:OnPostComponentPrepare()
    print("[MainId: 4001][Trigger: Q400102_NarratorTrigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(61.78556, 26.92391, 24.57099, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400102_NarratorTrigger:TriggerIn()
    print("[MainId: 4001][Trigger: Q400102_NarratorTrigger] TriggerIn")
    actorMgr:GetActor("4001"):LevelLoadFinishSafeCall(function(arg1)
        actorMgr:GetActor("4001"):AfterMainPageActiveSafeCall(function(arg1)
            local actor = actorMgr:GetActor("4001")
            actor:NarratorOnlyTaskByData(datas.Narrator_400102, nil, 4001)
            actor:EnterSceneLookCamera({x = 3619.582, y = 509.044, z = 4628.724}, 0, 3, true, false)
        end)
    end)

    this:DestroySelf()
end

function Q400102_NarratorTrigger:PreTriggerIn()
    print("[MainId: 4001][Trigger: Q400102_NarratorTrigger] PreTriggerIn")
end

function Q400102_NarratorTrigger:LightUpTriggerIn()
    print("[MainId: 4001][Trigger: Q400102_NarratorTrigger] LightUpTriggerIn")
end

function Q400102_NarratorTrigger:TriggerOut()
    print("[MainId: 4001][Trigger: Q400102_NarratorTrigger] TriggerOut")
end

return Q400102_NarratorTrigger
