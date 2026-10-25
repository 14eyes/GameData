require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73025Trigger_7302507 = class("Q73025Trigger_7302507", GadgetActorProxy)
Q73025Trigger_7302507.defaultAlias = "Q73025Trigger_7302507"
local Q73025ClientConfig = require("Quest/Client/Q73025ClientConfig")

local this
local subIDs = Q73025ClientConfig.SubIDs
local npcs = Q73025ClientConfig.Npcs
local gadgets = Q73025ClientConfig.Gadgets
local datas = Q73025ClientConfig.Datas

function Q73025Trigger_7302507:OnPostDataPrepare()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302507] OnPostDataPrepare")
    this = self
end

function Q73025Trigger_7302507:OnPostComponentPrepare()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302507] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73025Trigger_7302507:TriggerIn()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302507] TriggerIn")
    local actor = actorMgr:GetActor("73025")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7302507_guide").pos, 0, 1.5, true, false)
    actor:NarratorOnlyTask(datas.NarratorTable_clean1_stone, nil, "")
    this:DestroySelf()
end

function Q73025Trigger_7302507:TriggerOut()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302507] TriggerOut")
end

return Q73025Trigger_7302507
