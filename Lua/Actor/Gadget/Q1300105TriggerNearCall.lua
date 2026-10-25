require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300105TriggerNearCall = class("Q1300105TriggerNearCall", GadgetActorProxy)
Q1300105TriggerNearCall.defaultAlias = "Q1300105TriggerNearCall"
local Q13001ClientConfig = require("Quest/Client/Q13001ClientConfig")

local this
local subIDs = Q13001ClientConfig.SubIDs
local npcs = Q13001ClientConfig.Npcs
local datas = Q13001ClientConfig.Datas

function Q1300105TriggerNearCall:OnPostDataPrepare()
    print("[MainId: 13001][Trigger: Q1300105TriggerNearCall] OnPostDataPrepare")
    this = self
end

function Q1300105TriggerNearCall:OnPostComponentPrepare()
    print("[MainId: 13001][Trigger: Q1300105TriggerNearCall] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300105TriggerNearCall:TriggerIn()
    print("[MainId: 13001][Trigger: Q1300105TriggerNearCall] TriggerIn")
    local actor = actorMgr:GetActor("13001")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId2, nil, 13001)
    actor:CallDelay(3, function(arg1)
        local actor = actorMgr:GetActor("13001")
        actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1300105_N1050").pos, 0, 3, true, false)
        actor:EnablePlayerInput(false)
        actor:CallDelay(3, function(arg1)
            actorMgr:GetActor("13001"):EnablePlayerInput(true)
        end)

        actor:GetQuestNpcActor(npcs.Npc1050Data.alias):TurnToAvatar()
    end)

    this:DestroySelf()
end

function Q1300105TriggerNearCall:TriggerOut()
    print("[MainId: 13001][Trigger: Q1300105TriggerNearCall] TriggerOut")
end

return Q1300105TriggerNearCall
