require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73001Trigger3 = class("Q73001Trigger3", GadgetActorProxy)
Q73001Trigger3.defaultAlias = "Q73001Trigger3"
local Q73001ClientConfig = require("Quest/Client/Q73001ClientConfig")

local this
local subIDs = Q73001ClientConfig.SubIDs
local npcs = Q73001ClientConfig.Npcs
local datas = Q73001ClientConfig.Datas

function Q73001Trigger3:OnPostDataPrepare()
    print("[MainId: 73001][Trigger: Q73001Trigger3] OnPostDataPrepare")
    this = self
end

function Q73001Trigger3:OnPostComponentPrepare()
    print("[MainId: 73001][Trigger: Q73001Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73001Trigger3:TriggerIn()
    print("[MainId: 73001][Trigger: Q73001Trigger3] TriggerIn")
    actorMgr:GetActor("73001").FinishQuestID(false, 7300108)
    this:DestroySelf()
end

function Q73001Trigger3:TriggerOut()
    print("[MainId: 73001][Trigger: Q73001Trigger3] TriggerOut")
end

return Q73001Trigger3
