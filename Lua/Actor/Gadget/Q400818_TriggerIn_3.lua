require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400818_TriggerIn_3 = class("Q400818_TriggerIn_3", GadgetActorProxy)
Q400818_TriggerIn_3.defaultAlias = "Q400818_TriggerIn_3"
local Q4008ClientConfig = require("Quest/Client/Q4008ClientConfig")

local this
local subIDs = Q4008ClientConfig.SubIDs
local npcs = Q4008ClientConfig.Npcs
local points = Q4008ClientConfig.Points
local datas = Q4008ClientConfig.Datas

function Q400818_TriggerIn_3:OnPostDataPrepare()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_3] OnPostDataPrepare")
    this = self
end

function Q400818_TriggerIn_3:OnPostComponentPrepare()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_3] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 40, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400818_TriggerIn_3:TriggerIn()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_3] TriggerIn")
    local actor = actorMgr:GetActor(datas.Q400818_TriggerIn_1.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(datas.Q400818_TriggerIn_2.alias)
    if v ~= nil then
        v:DestroySelf()
    end

    local actor2 = actorMgr:GetActor("4008")
    actor2:EnablePlayerInputByQuest(false)
    actor2:EnterSceneLookCamera({x = 112.459, y = 16.82, z = 5.841}, 0, 4, true, true)
    actor2:NarratorOnlyTaskByData(datas.NarratorWithId_400812, function(arg1)
        local actor = actorMgr:GetActor("4008")
        actor:CreateQuestNpcById(400818, npcs.Npc13477Data.id, 0)
        actor:EnablePlayerInputByQuest(true)
        actor:RequestInteraction(npcs.Npc13477Data.alias)
    end)

    actor2:CallDelayByQuest("40081803", 4, function(arg1)
        actorMgr:GetActor("4008"):EnablePlayerInputByQuest(true)
    end)

    this:DestroySelf()
end

function Q400818_TriggerIn_3:PreTriggerIn()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_3] PreTriggerIn")
end

function Q400818_TriggerIn_3:LightUpTriggerIn()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_3] LightUpTriggerIn")
end

function Q400818_TriggerIn_3:TriggerOut()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_3] TriggerOut")
end

return Q400818_TriggerIn_3
