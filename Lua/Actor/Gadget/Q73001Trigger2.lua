require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73001Trigger2 = class("Q73001Trigger2", GadgetActorProxy)
Q73001Trigger2.defaultAlias = "Q73001Trigger2"
local Q73001ClientConfig = require("Quest/Client/Q73001ClientConfig")

local this
local subIDs = Q73001ClientConfig.SubIDs
local npcs = Q73001ClientConfig.Npcs
local datas = Q73001ClientConfig.Datas

function Q73001Trigger2:OnPostDataPrepare()
    print("[MainId: 73001][Trigger: Q73001Trigger2] OnPostDataPrepare")
    this = self
end

function Q73001Trigger2:OnPostComponentPrepare()
    print("[MainId: 73001][Trigger: Q73001Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73001Trigger2:TriggerIn()
    print("[MainId: 73001][Trigger: Q73001Trigger2] TriggerIn")
    actorMgr:GetActor("73001").FinishQuestID(false, 7300115)
    this:DestroySelf()
end

function Q73001Trigger2:TriggerOut()
    print("[MainId: 73001][Trigger: Q73001Trigger2] TriggerOut")
end

return Q73001Trigger2
