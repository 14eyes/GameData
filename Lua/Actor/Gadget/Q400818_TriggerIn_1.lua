require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400818_TriggerIn_1 = class("Q400818_TriggerIn_1", GadgetActorProxy)
Q400818_TriggerIn_1.defaultAlias = "Q400818_TriggerIn_1"
local Q4008ClientConfig = require("Quest/Client/Q4008ClientConfig")

local this
local subIDs = Q4008ClientConfig.SubIDs
local npcs = Q4008ClientConfig.Npcs
local points = Q4008ClientConfig.Points
local datas = Q4008ClientConfig.Datas

function Q400818_TriggerIn_1:OnPostDataPrepare()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_1] OnPostDataPrepare")
    this = self
end

function Q400818_TriggerIn_1:OnPostComponentPrepare()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_1] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 20, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400818_TriggerIn_1:TriggerIn()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_1] TriggerIn")
    local actor = actorMgr:GetActor("4008")
    actor:EnablePlayerInputByQuest(false)
    actor:EnterSceneLookCamera({x = 84.751, y = 14.781, z = 68.37}, 0, 3, true, true)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId_400810)
    actor:CallDelayByQuest("40081801", 3, function(arg1)
        actorMgr:GetActor("4008"):EnablePlayerInputByQuest(true)
    end)

    this:DestroySelf()
end

function Q400818_TriggerIn_1:PreTriggerIn()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_1] PreTriggerIn")
end

function Q400818_TriggerIn_1:LightUpTriggerIn()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_1] LightUpTriggerIn")
end

function Q400818_TriggerIn_1:TriggerOut()
    print("[MainId: 4008][Trigger: Q400818_TriggerIn_1] TriggerOut")
end

return Q400818_TriggerIn_1
