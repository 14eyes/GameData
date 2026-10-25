require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7300119Trigger_fail = class("Q7300119Trigger_fail", GadgetActorProxy)
Q7300119Trigger_fail.defaultAlias = "Q7300119Trigger_fail"
local Q73001ClientConfig = require("Quest/Client/Q73001ClientConfig")

local this
local subIDs = Q73001ClientConfig.SubIDs
local npcs = Q73001ClientConfig.Npcs
local datas = Q73001ClientConfig.Datas

function Q7300119Trigger_fail:OnPostDataPrepare()
    print("[MainId: 73001][Trigger: Q7300119Trigger_fail] OnPostDataPrepare")
    this = self
end

function Q7300119Trigger_fail:OnPostComponentPrepare()
    print("[MainId: 73001][Trigger: Q7300119Trigger_fail] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(39.80047, 120.0544, 27.19473, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7300119Trigger_fail:TriggerIn()
    print("[MainId: 73001][Trigger: Q7300119Trigger_fail] TriggerIn")
end

function Q7300119Trigger_fail:TriggerOut()
    print("[MainId: 73001][Trigger: Q7300119Trigger_fail] TriggerOut")
    actorUtils.FinishQuestID(true, 7300119)
    this:DestroySelf()
end

return Q7300119Trigger_fail
