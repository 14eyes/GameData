require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74164Trigger2 = class("Q74164Trigger2", GadgetActorProxy)
Q74164Trigger2.defaultAlias = "Q74164Trigger2"
local Q74164ClientConfig = require("Quest/Client/Q74164ClientConfig")

local this
local subIDs = Q74164ClientConfig.SubIDs
local npcs = Q74164ClientConfig.Npcs
local datas = Q74164ClientConfig.Datas

function Q74164Trigger2:OnPostDataPrepare()
    print("[MainId: 74164][Trigger: Q74164Trigger2] OnPostDataPrepare")
    this = self
end

function Q74164Trigger2:OnPostComponentPrepare()
    print("[MainId: 74164][Trigger: Q74164Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(24, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74164Trigger2:TriggerIn()
    print("[MainId: 74164][Trigger: Q74164Trigger2] TriggerIn")
    local actor = actorMgr:GetActor("74164")
    actor:NarratorOnlyTaskByData(datas.Narrator_7416414)
    actor:EnterSceneLookCamera({x = 3273.432, y = 413.767, z = 3894.579}, 0, 2, false, false)
    actorUtils.FinishQuestID(false, 7416407)
    this:DestroySelf()
end

function Q74164Trigger2:PreTriggerIn()
    print("[MainId: 74164][Trigger: Q74164Trigger2] PreTriggerIn")
end

function Q74164Trigger2:LightUpTriggerIn()
    print("[MainId: 74164][Trigger: Q74164Trigger2] LightUpTriggerIn")
end

function Q74164Trigger2:TriggerOut()
    print("[MainId: 74164][Trigger: Q74164Trigger2] TriggerOut")
end

return Q74164Trigger2
