require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1907305TriggerFinish = class("Q1907305TriggerFinish", GadgetActorProxy)
Q1907305TriggerFinish.defaultAlias = "Q1907305TriggerFinish"
local Q19073ClientConfig = require("Quest/Client/Q19073ClientConfig")

local this
local subIDs = Q19073ClientConfig.SubIDs
local npcs = Q19073ClientConfig.Npcs
local points = Q19073ClientConfig.Points
local datas = Q19073ClientConfig.Datas

function Q1907305TriggerFinish:OnPostDataPrepare()
    print("[MainId: 19073][Trigger: Q1907305TriggerFinish] OnPostDataPrepare")
    this = self
end

function Q1907305TriggerFinish:OnPostComponentPrepare()
    print("[MainId: 19073][Trigger: Q1907305TriggerFinish] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(4, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1907305TriggerFinish:TriggerIn()
    print("[MainId: 19073][Trigger: Q1907305TriggerFinish] TriggerIn")
    local questNpcActor = actorMgr:GetActor("19073"):GetQuestNpcActor(npcs.Coop_KaeyaData.alias)
    local avatarPos = actorUtils.GetAvatarPos()
    questNpcActor.SteerToTask(questNpcActor, avatarPos, 1, true, true)
    actorMgr:GetActor("19073"):CallDelayByQuest("2", 2, function(arg1)
        questNpcActor:DoFreeStyle(1190, true, nil, true, true, true, false)
        local actor = actorMgr:GetActor("19073")
        actor.NarratorOnlyTaskByData(actor, datas.NarratorWithId_01, function(arg1)
            local questNpcActor = actor:GetQuestNpcActor(npcs.Coop_KaeyaData.alias)
            actor:FinishQuestID(false, 1907305)
            this:DestroySelf()
        end, 19073)
    end)
end

function Q1907305TriggerFinish:PreTriggerIn()
    print("[MainId: 19073][Trigger: Q1907305TriggerFinish] PreTriggerIn")
end

function Q1907305TriggerFinish:LightUpTriggerIn()
    print("[MainId: 19073][Trigger: Q1907305TriggerFinish] LightUpTriggerIn")
end

function Q1907305TriggerFinish:TriggerOut()
    print("[MainId: 19073][Trigger: Q1907305TriggerFinish] TriggerOut")
end

return Q1907305TriggerFinish
