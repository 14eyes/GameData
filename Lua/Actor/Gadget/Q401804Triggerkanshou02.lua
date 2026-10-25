require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401804Triggerkanshou02 = class("Q401804Triggerkanshou02", GadgetActorProxy)
Q401804Triggerkanshou02.defaultAlias = "Q401804Triggerkanshou02"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401804Triggerkanshou02:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401804Triggerkanshou02] OnPostDataPrepare")
    this = self
end

function Q401804Triggerkanshou02:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401804Triggerkanshou02] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 12, 12, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401804Triggerkanshou02:TriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerkanshou02] TriggerIn")
    local actor = actorMgr:GetActor("4018")
    actor:GetQuestNpcActor(npcs.Npc13693Data.alias):Standby()
    actor:RequestInteraction(npcs.Npc13693Data.alias, "", true)
end

function Q401804Triggerkanshou02:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerkanshou02] PreTriggerIn")
end

function Q401804Triggerkanshou02:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerkanshou02] LightUpTriggerIn")
end

function Q401804Triggerkanshou02:TriggerOut()
    print("[MainId: 4018][Trigger: Q401804Triggerkanshou02] TriggerOut")
end

return Q401804Triggerkanshou02
