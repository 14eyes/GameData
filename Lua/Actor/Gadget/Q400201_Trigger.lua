require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400201_Trigger = class("Q400201_Trigger", GadgetActorProxy)
Q400201_Trigger.defaultAlias = "Q400201_Trigger"
local Q4002ClientConfig = require("Quest/Client/Q4002ClientConfig")

local this
local subIDs = Q4002ClientConfig.SubIDs
local npcs = Q4002ClientConfig.Npcs
local points = Q4002ClientConfig.Points
local datas = Q4002ClientConfig.Datas

function Q400201_Trigger:OnPostDataPrepare()
    print("[MainId: 4002][Trigger: Q400201_Trigger] OnPostDataPrepare")
    this = self
end

function Q400201_Trigger:OnPostComponentPrepare()
    print("[MainId: 4002][Trigger: Q400201_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400201_Trigger:TriggerIn()
    print("[MainId: 4002][Trigger: Q400201_Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 400201)
    actorMgr:GetActor("4002"):LevelLoadFinishSafeCall(function(arg1)
        actorMgr:GetActor("4002"):AfterMainPageActiveSafeCall(function(arg1)
            actorMgr:GetActor("4002"):CallDelayByQuest("400201Narrator", 2, function(arg1)
                actorMgr:GetActor("4002"):NarratorOnlyTaskByData(datas.Narrator_400202, nil, 4002)
            end)
        end)
    end)

    this:DestroySelf()
end

function Q400201_Trigger:PreTriggerIn()
    print("[MainId: 4002][Trigger: Q400201_Trigger] PreTriggerIn")
end

function Q400201_Trigger:LightUpTriggerIn()
    print("[MainId: 4002][Trigger: Q400201_Trigger] LightUpTriggerIn")
end

function Q400201_Trigger:TriggerOut()
    print("[MainId: 4002][Trigger: Q400201_Trigger] TriggerOut")
end

return Q400201_Trigger
