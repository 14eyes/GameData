require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19073Trigger3 = class("Q19073Trigger3", GadgetActorProxy)
Q19073Trigger3.defaultAlias = "Q19073Trigger3"
local Q19073ClientConfig = require("Quest/Client/Q19073ClientConfig")

local this
local subIDs = Q19073ClientConfig.SubIDs
local npcs = Q19073ClientConfig.Npcs
local points = Q19073ClientConfig.Points
local datas = Q19073ClientConfig.Datas

function Q19073Trigger3:OnPostDataPrepare()
    print("[MainId: 19073][Trigger: Q19073Trigger3] OnPostDataPrepare")
    this = self
end

function Q19073Trigger3:OnPostComponentPrepare()
    print("[MainId: 19073][Trigger: Q19073Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19073Trigger3:TriggerIn()
    print("[MainId: 19073][Trigger: Q19073Trigger3] TriggerIn")
    actorMgr:GetActor("19073"):NarratorOnlyTaskByData(datas.NarratorWithId_01, function(arg1)
        actorUtils.FinishQuestID(false, 1907303)
    end)

    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias)
    questNpcActor:LookAt(npcs.Npc13304Data.point.pos)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, true, false)
    this:DestroySelf()
end

function Q19073Trigger3:PreTriggerIn()
    print("[MainId: 19073][Trigger: Q19073Trigger3] PreTriggerIn")
end

function Q19073Trigger3:LightUpTriggerIn()
    print("[MainId: 19073][Trigger: Q19073Trigger3] LightUpTriggerIn")
end

function Q19073Trigger3:TriggerOut()
    print("[MainId: 19073][Trigger: Q19073Trigger3] TriggerOut")
end

return Q19073Trigger3
