require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73001Trigger1 = class("Q73001Trigger1", GadgetActorProxy)
Q73001Trigger1.defaultAlias = "Q73001Trigger1"
local Q73001ClientConfig = require("Quest/Client/Q73001ClientConfig")

local this
local subIDs = Q73001ClientConfig.SubIDs
local npcs = Q73001ClientConfig.Npcs
local datas = Q73001ClientConfig.Datas

function Q73001Trigger1:OnPostDataPrepare()
    print("[MainId: 73001][Trigger: Q73001Trigger1] OnPostDataPrepare")
    this = self
end

function Q73001Trigger1:OnPostComponentPrepare()
    print("[MainId: 73001][Trigger: Q73001Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73001Trigger1:TriggerIn()
    print("[MainId: 73001][Trigger: Q73001Trigger1] TriggerIn")
    actorMgr:GetActor("73001").FinishQuestID(false, 7300101)
    this:DestroySelf()
end

function Q73001Trigger1:TriggerOut()
    print("[MainId: 73001][Trigger: Q73001Trigger1] TriggerOut")
end

return Q73001Trigger1
