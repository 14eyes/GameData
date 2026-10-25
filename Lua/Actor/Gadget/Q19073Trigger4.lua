require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19073Trigger4 = class("Q19073Trigger4", GadgetActorProxy)
Q19073Trigger4.defaultAlias = "Q19073Trigger4"
local Q19073ClientConfig = require("Quest/Client/Q19073ClientConfig")

local this
local subIDs = Q19073ClientConfig.SubIDs
local npcs = Q19073ClientConfig.Npcs
local points = Q19073ClientConfig.Points
local datas = Q19073ClientConfig.Datas

function Q19073Trigger4:OnPostDataPrepare()
    print("[MainId: 19073][Trigger: Q19073Trigger4] OnPostDataPrepare")
    this = self
end

function Q19073Trigger4:OnPostComponentPrepare()
    print("[MainId: 19073][Trigger: Q19073Trigger4] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19073Trigger4:TriggerIn()
    print("[MainId: 19073][Trigger: Q19073Trigger4] TriggerIn")
    local questNpcActor = actorMgr:GetActor("19073"):GetQuestNpcActor(npcs.Coop_KaeyaData.alias)
    local avatarPos = actorUtils.GetAvatarPos()
    questNpcActor.SteerToTask(questNpcActor, avatarPos, 1, true, true)
    actorMgr:GetActor("19073"):CallDelayByQuest("2", 1, function(arg1)
        questNpcActor:DoFreeStyle(1190, true, nil, true, true, true, false)
        local actor = actorMgr:GetActor("19073")
        actor.NarratorOnlyTaskByData(actor, datas.NarratorWithId_01, function(arg1)
            local questNpcActor = actor:GetQuestNpcActor(npcs.Coop_KaeyaData.alias)
            questNpcActor:SteerToTask({x = -2049.1, y = 205.878, z = 2585.771}, 1, true, true)
            questNpcActor:LookAt({x = -2049.1, y = 205.878, z = 2585.771})
            actor:FinishQuestID(false, 1907305)
            this:DestroySelf()
        end, 19073)
    end)
end

function Q19073Trigger4:PreTriggerIn()
    print("[MainId: 19073][Trigger: Q19073Trigger4] PreTriggerIn")
end

function Q19073Trigger4:LightUpTriggerIn()
    print("[MainId: 19073][Trigger: Q19073Trigger4] LightUpTriggerIn")
end

function Q19073Trigger4:TriggerOut()
    print("[MainId: 19073][Trigger: Q19073Trigger4] TriggerOut")
end

return Q19073Trigger4
