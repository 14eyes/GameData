require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400818_TriggerIn_2 = class("Q400818_TriggerIn_2", GadgetActorProxy)
Q400818_TriggerIn_2.defaultAlias = "Q400818_TriggerIn_2"
local Q4008ClientConfig = require("Quest/Client/Q4008ClientConfig")

local this
local subIDs = Q4008ClientConfig.SubIDs
local npcs = Q4008ClientConfig.Npcs
local points = Q4008ClientConfig.Points
local datas = Q4008ClientConfig.Datas

function Q400818_TriggerIn_2:OnPostDataPrepare()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_2] OnPostDataPrepare")
    this = self
end

function Q400818_TriggerIn_2:OnPostComponentPrepare()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_2] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 20, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400818_TriggerIn_2:TriggerIn()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_2] TriggerIn")
    local actor = actorMgr:GetActor(datas.Q400818_TriggerIn_1.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor("4008")
    v:EnablePlayerInputByQuest(false)
    v:EnterSceneLookCamera({x = 89.84, y = 14.33, z = 10.948}, 0, 3, true, true)
    v:NarratorOnlyTaskByData(datas.NarratorWithId_400811)
    v:CallDelayByQuest("40081802", 3, function(arg1)
        actorMgr:GetActor("4008"):EnablePlayerInputByQuest(true)
    end)

    this:DestroySelf()
end

function Q400818_TriggerIn_2:PreTriggerIn()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_2] PreTriggerIn")
end

function Q400818_TriggerIn_2:LightUpTriggerIn()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_2] LightUpTriggerIn")
end

function Q400818_TriggerIn_2:TriggerOut()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_2] TriggerOut")
end

return Q400818_TriggerIn_2
