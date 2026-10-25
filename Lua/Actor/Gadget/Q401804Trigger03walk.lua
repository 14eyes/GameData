require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401804Trigger03walk = class("Q401804Trigger03walk", GadgetActorProxy)
Q401804Trigger03walk.defaultAlias = "Q401804Trigger03walk"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401804Trigger03walk:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401804Trigger03walk] OnPostDataPrepare")
    this = self
end

function Q401804Trigger03walk:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401804Trigger03walk] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401804Trigger03walk:TriggerIn()
    print("[MainId: 4018][Trigger: Q401804Trigger03walk] TriggerIn")
    local actor = actorMgr:GetActor("4018")
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc13694Data.alias, 4018)
    actor:NpcWalkToTaskEasy(questNpcActor, {x = 4448.799, y = 150.1, z = 4663.793})
    this:DestroySelf()
end

function Q401804Trigger03walk:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401804Trigger03walk] PreTriggerIn")
end

function Q401804Trigger03walk:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401804Trigger03walk] LightUpTriggerIn")
end

function Q401804Trigger03walk:TriggerOut()
    print("[MainId: 4018][Trigger: Q401804Trigger03walk] TriggerOut")
end

return Q401804Trigger03walk
