require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19080Trigger = class("Q19080Trigger", GadgetActorProxy)
Q19080Trigger.defaultAlias = "Q19080Trigger"
local Q19080ClientConfig = require("Quest/Client/Q19080ClientConfig")

local this
local subIDs = Q19080ClientConfig.SubIDs
local npcs = Q19080ClientConfig.Npcs
local points = Q19080ClientConfig.Points
local datas = Q19080ClientConfig.Datas

function Q19080Trigger:OnPostDataPrepare()
    print("[MainId: 19080][Trigger: Q19080Trigger] OnPostDataPrepare")
    this = self
end

function Q19080Trigger:OnPostComponentPrepare()
    print("[MainId: 19080][Trigger: Q19080Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(13.88349, 19.94, 6.13, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19080Trigger:TriggerIn()
    print("[MainId: 19080][Trigger: Q19080Trigger] TriggerIn")
    local actor = actorMgr:GetActor("19080")
    actor:ClearNarratorTask()
    actor:NarratorOnlyTaskByData(datas.NarratorWithId, function(arg1)
        local actor = actorMgr:GetActor("19080")
        actorUtils.FinishQuestID(false, 1908020)
    end, 19080)

    actor:GetQuestNpcActor(npcs.Npc2020Data.alias):DoFreeStyle(1200, true, nil, true, true, false, false)
    globalActor:StopLocalAvatar()
    actor:EnablePlayerInputByQuest(false)
    actor:EnterSceneLookCamera(datas.Cam1908020, 0.1, 3, true, false)
    actor:CallDelayByQuest("1908020", 3, function(arg1)
        actorMgr:GetActor("19080"):EnablePlayerInputByQuest(true)
        this:DestroySelf()
    end)
end

function Q19080Trigger:PreTriggerIn()
    print("[MainId: 19080][Trigger: Q19080Trigger] PreTriggerIn")
end

function Q19080Trigger:LightUpTriggerIn()
    print("[MainId: 19080][Trigger: Q19080Trigger] LightUpTriggerIn")
end

function Q19080Trigger:TriggerOut()
    print("[MainId: 19080][Trigger: Q19080Trigger] TriggerOut")
end

return Q19080Trigger
