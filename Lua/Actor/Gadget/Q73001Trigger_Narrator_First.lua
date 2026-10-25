require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73001Trigger_Narrator_First = class("Q73001Trigger_Narrator_First", GadgetActorProxy)
Q73001Trigger_Narrator_First.defaultAlias = "Q73001Trigger_Narrator_First"
local Q73001ClientConfig = require("Quest/Client/Q73001ClientConfig")

local this
local subIDs = Q73001ClientConfig.SubIDs
local npcs = Q73001ClientConfig.Npcs
local datas = Q73001ClientConfig.Datas

function Q73001Trigger_Narrator_First:OnPostDataPrepare()
    print("[MainId: 73001][Trigger: Q73001Trigger_Narrator_First] OnPostDataPrepare")
    this = self
end

function Q73001Trigger_Narrator_First:OnPostComponentPrepare()
    print("[MainId: 73001][Trigger: Q73001Trigger_Narrator_First] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73001Trigger_Narrator_First:TriggerIn()
    print("[MainId: 73001][Trigger: Q73001Trigger_Narrator_First] TriggerIn")
    actorMgr:GetActor("73001"):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 73001)
    this:DestroySelf()
end

function Q73001Trigger_Narrator_First:TriggerOut()
    print("[MainId: 73001][Trigger: Q73001Trigger_Narrator_First] TriggerOut")
end

return Q73001Trigger_Narrator_First
